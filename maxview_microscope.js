/**
 * MaxView Microscope — Node for Max (JoyHonest / MAX-VIEW)
 * Arranque defensivo: registra handlers ANTES de cargar deps pesadas.
 */

const Max = require("max-api");
const path = require("path");
const fs = require("fs");
const { execFile, spawn } = require("child_process");

const DEBUG_LOG = path.join(__dirname, "node_debug.log");
function fileLog(msg) {
  try {
    fs.appendFileSync(DEBUG_LOG, new Date().toISOString() + " " + msg + "\n", "utf8");
  } catch (_) {}
}

fileLog("maxview_microscope.js boot __dirname=" + __dirname);
Max.post("[MaxView] boot…");
fileLog("Max.post boot ok");

const JHCMD = Buffer.from("JHCMD");
const CMD_PORT = 20000;
const DATA_PORT = 10900;

const SCALES = {
  major: [0, 2, 4, 5, 7, 9, 11],
  minor: [0, 2, 3, 5, 7, 8, 10],
  pentatonic: [0, 2, 4, 7, 9],
  chromatic: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11],
};

const BANDS = [
  { name: "treble", root: 72 },
  { name: "mid", root: 60 },
  { name: "bass", root: 36 },
];

let dgram = null;
let sharp = null;
let os = null;

let camIp = "192.168.29.1";
let bindIp = null;
let sensitivity = 0.7;
let gate = 0.04;
let maxVelocity = 110;
let holdMs = 450;
let scaleName = "pentatonic";
let lastNoteAt = [0, 0, 0];
let noteCooldownMs = 140;
let autoStarted = false;
let notesFired = 0;
/** Ignora ruido JPEG/compresión: solo cuenta píxeles con |Δ| > esto (0–255). */
let noiseFloor = 12;
let framesSinceStart = 0;

let tx = null;
let rx = null;
let running = false;
let keepaliveTimer = null;
let jpegBuf = Buffer.alloc(0);
let prevGray = null;
let prevW = 0;
let prevH = 0;
let activeNotes = new Map();
let frameCount = 0;
let lastFpsT = Date.now();
let fps = 0;
let scriptReady = false;
let installing = false;
let previewEnabled = true;
let visualFx = true; // efecto elegante (líneas + borde); no tapa el vídeo
let lastPreviewT = 0;
let previewFlip = 0;
const PREVIEW_MIN_MS = 66; // ~15 fps a disco
const PREVIEW_PATHS = [
  path.join(__dirname, "preview_a.jpg"),
  path.join(__dirname, "preview_b.jpg"),
];
const PREVIEW_TMP = path.join(__dirname, "preview.tmp.jpg");
// alias legacy
const PREVIEW_PATH = path.join(__dirname, "preview.jpg");
/** Intensidad de flash por banda (treble, mid, bass) para el efecto visual */
let bandFlash = [0, 0, 0];
let lastLevels = [0, 0, 0];
/** MIDI Windows (winmm → GS Wavetable) — suena en altavoces aunque Max DSP falle */
let winMidiProc = null;
let winMidiReady = false;
let winMidiQueue = [];
const WIN_MIDI_SCRIPT = path.join(__dirname, "win_midi_daemon.ps1");

function scriptDir() {
  try {
    if (typeof __dirname === "string" && __dirname.length) return __dirname;
  } catch (_) {}
  try {
    if (typeof __filename === "string" && __filename.length) {
      return path.dirname(__filename);
    }
  } catch (_) {}
  return process.cwd();
}

function packageRoot() {
  const dir = scriptDir();
  const candidates = [dir, path.join(dir, "..")];
  for (const c of candidates) {
    try {
      if (fs.existsSync(path.join(c, "package.json"))) return c;
    } catch (_) {}
  }
  return dir;
}

function status(msg) {
  fileLog(msg);
  Max.post("[MaxView] " + msg);
  // textedit exige: set <texto>  (route status → queda "set …")
  Max.outlet("status", "set", String(msg).replace(/\s+/g, " "));
}

function tryLoadSharp() {
  const root = packageRoot();
  const dir = scriptDir();
  const candidates = [
    path.join(root, "node_modules", "sharp"),
    path.join(dir, "node_modules", "sharp"),
    "sharp",
  ];
  for (const c of candidates) {
    try {
      sharp = require(c);
      status("sharp OK");
      return true;
    } catch (_) {}
  }
  return false;
}

function npmInstallOnce() {
  return new Promise((resolve, reject) => {
    const root = packageRoot();
    const marker = path.join(root, "node_modules", ".maxview_installed");
    if (fs.existsSync(marker) && tryLoadSharp()) {
      resolve(false);
      return;
    }
    if (tryLoadSharp()) {
      try {
        fs.mkdirSync(path.join(root, "node_modules"), { recursive: true });
        fs.writeFileSync(marker, new Date().toISOString());
      } catch (_) {}
      resolve(false);
      return;
    }

    installing = true;
    status("Primera vez: npm install (espera)…");
    const npmCmd = process.platform === "win32" ? "npm.cmd" : "npm";
    execFile(
      npmCmd,
      ["install", "--no-fund", "--no-audit", "--loglevel=error"],
      {
        cwd: root,
        windowsHide: true,
        env: process.env,
        timeout: 180000,
      },
      (err, stdout, stderr) => {
        installing = false;
        if (stdout) Max.post(String(stdout).slice(0, 500));
        if (stderr) Max.post(String(stderr).slice(0, 500));
        if (err) {
          reject(
            new Error(
              "npm install falló (" + err.message + "). ¿Node/npm en PATH?"
            )
          );
          return;
        }
        if (!tryLoadSharp()) {
          reject(new Error("npm install OK pero sharp no carga"));
          return;
        }
        try {
          fs.writeFileSync(marker, new Date().toISOString());
        } catch (_) {}
        status("npm install listo");
        resolve(true);
      }
    );
  });
}

function ensureDeps() {
  if (!dgram) dgram = require("dgram");
  if (!os) os = require("os");
  if (!sharp && !tryLoadSharp()) {
    throw new Error("sharp no disponible (espera npm install o reinicia el patch)");
  }
}

function jh(code, arg = 0) {
  return Buffer.concat([JHCMD, Buffer.from([code & 0xff, arg & 0xff])]);
}

function detectBindIp() {
  const ifaces = os.networkInterfaces();
  for (const name of Object.keys(ifaces)) {
    for (const info of ifaces[name] || []) {
      if (
        (info.family === "IPv4" || info.family === 4) &&
        !info.internal &&
        String(info.address).startsWith("192.168.29.")
      ) {
        return info.address;
      }
    }
  }
  return "0.0.0.0";
}

function sendCmd(buf) {
  if (!tx) return;
  tx.send(buf, CMD_PORT, camIp, (err) => {
    if (err) status("tx error: " + err.message);
  });
}

function winMidiSend(line) {
  if (!winMidiProc || !winMidiProc.stdin || !winMidiProc.stdin.writable) {
    winMidiQueue.push(line);
    ensureWinMidi();
    return;
  }
  if (!winMidiReady) {
    winMidiQueue.push(line);
    return;
  }
  try {
    winMidiProc.stdin.write(line + "\n");
  } catch (e) {
    fileLog("winMidi write fail: " + e.message);
  }
}

function ensureWinMidi() {
  if (winMidiProc) return;
  if (!fs.existsSync(WIN_MIDI_SCRIPT)) {
    fileLog("win_midi_daemon.ps1 missing");
    return;
  }
  try {
    winMidiProc = spawn(
      "powershell",
      ["-NoProfile", "-ExecutionPolicy", "Bypass", "-File", WIN_MIDI_SCRIPT],
      {
        windowsHide: true,
        stdio: ["pipe", "pipe", "pipe"],
      }
    );
    winMidiReady = false;
    winMidiProc.stdout.on("data", (buf) => {
      const s = String(buf);
      if (s.indexOf("READY") >= 0) {
        winMidiReady = true;
        // Piano eléctrico (programa 4) — más audible que el piano default
        try {
          winMidiProc.stdin.write("pc 4\n");
        } catch (_) {}
        const q = winMidiQueue.splice(0, winMidiQueue.length);
        for (const line of q) {
          try {
            winMidiProc.stdin.write(line + "\n");
          } catch (_) {}
        }
        status("WinMIDI listo (GS Wavetable → altavoces)");
      }
    });
    winMidiProc.stderr.on("data", (buf) => {
      fileLog("winMidi: " + String(buf).trim());
    });
    winMidiProc.on("exit", (code) => {
      fileLog("winMidi exit " + code);
      winMidiProc = null;
      winMidiReady = false;
    });
    winMidiProc.on("error", (e) => {
      fileLog("winMidi spawn error: " + e.message);
      winMidiProc = null;
      winMidiReady = false;
    });
  } catch (e) {
    fileLog("ensureWinMidi: " + e.message);
    winMidiProc = null;
  }
}

function stopWinMidi() {
  winMidiQueue = [];
  if (!winMidiProc) return;
  try {
    winMidiProc.stdin.write("panic\nquit\n");
  } catch (_) {}
  try {
    winMidiProc.kill();
  } catch (_) {}
  winMidiProc = null;
  winMidiReady = false;
}

function noteOn(pitch, vel) {
  pitch = Math.max(0, Math.min(127, pitch | 0));
  vel = Math.max(1, Math.min(127, vel | 0));
  if (activeNotes.has(pitch)) clearTimeout(activeNotes.get(pitch));
  Max.outlet("midi", pitch, vel);
  // Audio real por Windows MIDI (independiente del DSP de Max)
  winMidiSend("on " + pitch + " " + vel);
  // solo note-on en UI (evita "vel 0")
  Max.outlet("noteui", "set", "MIDI " + pitch + "  vel " + vel);
  const t = setTimeout(() => {
    Max.outlet("midi", pitch, 0);
    winMidiSend("off " + pitch);
    activeNotes.delete(pitch);
  }, holdMs);
  activeNotes.set(pitch, t);
}

function allNotesOff() {
  for (const [pitch, t] of activeNotes) {
    clearTimeout(t);
    Max.outlet("midi", pitch, 0);
    winMidiSend("off " + pitch);
  }
  activeNotes.clear();
  winMidiSend("panic");
}

function scaleDegree(t, root) {
  const sc = SCALES[scaleName] || SCALES.pentatonic;
  const idx = Math.min(sc.length - 1, Math.floor(t * sc.length));
  const oct = Math.floor(t * 2);
  return root + sc[idx] + 12 * Math.min(1, oct);
}

function bandMeans(gray, width, height) {
  const h1 = (height / 3) | 0;
  const h2 = ((2 * height) / 3) | 0;
  const ranges = [
    [0, h1],
    [h1, h2],
    [h2, height],
  ];
  const means = [];
  for (const [y0, y1] of ranges) {
    let sum = 0;
    let n = 0;
    for (let y = y0; y < y1; y += 4) {
      const row = y * width;
      for (let x = 0; x < width; x += 4) {
        sum += gray[row + x];
        n++;
      }
    }
    means.push(n ? sum / n / 255 : 0);
  }
  return means;
}

function bandDiffMaps(gray, width, height, prev) {
  const h1 = (height / 3) | 0;
  const h2 = ((2 * height) / 3) | 0;
  const ranges = [
    [0, h1],
    [h1, h2],
    [h2, height],
  ];
  const diffs = [];
  const floor = noiseFloor;
  for (const [y0, y1] of ranges) {
    let sum = 0;
    let n = 0;
    for (let y = y0; y < y1; y += 4) {
      const row = y * width;
      for (let x = 0; x < width; x += 4) {
        const i = row + x;
        const d = Math.abs(gray[i] - prev[i]);
        n++;
        // Solo variación real de píxeles (por encima del ruido de compresión)
        if (d > floor) sum += d - floor;
      }
    }
    diffs.push(n ? sum / n / 255 : 0);
  }
  return diffs;
}

let decodeBusy = false;

/**
 * FX discreto: 2 líneas finas (3 bandas) + brillo suave solo en el borde izquierdo
 * cuando hay nota — no tapa el centro del vídeo.
 */
async function renderElegantFx(jpg) {
  const meta = await sharp(jpg).metadata();
  const w = meta.width || 640;
  const h = meta.height || 360;
  const h1 = Math.floor(h / 3);
  const h2 = Math.floor((2 * h) / 3);
  const stripW = Math.max(6, Math.floor(w * 0.028));
  const overlays = [];

  // Líneas divisorias finas (siempre, muy sutiles)
  const lineH = 1;
  for (const y of [h1, h2]) {
    const line = await sharp({
      create: {
        width: w,
        height: lineH,
        channels: 4,
        background: { r: 255, g: 255, b: 255, alpha: 55 },
      },
    })
      .png()
      .toBuffer();
    overlays.push({ input: line, top: y, left: 0 });
  }

  // Destello lateral por banda (T/M/B) — colores suaves
  const colors = [
    { rgb: [140, 210, 255], a: bandFlash[0] }, // treble
    { rgb: [170, 230, 180], a: bandFlash[1] }, // mid
    { rgb: [255, 190, 140], a: bandFlash[2] }, // bass
  ];
  const tops = [0, h1, h2];
  const heights = [h1, h2 - h1, h - h2];
  for (let i = 0; i < 3; i++) {
    const strength = Math.min(1, colors[i].a * 0.85 + (lastLevels[i] || 0) * 0.25);
    if (strength < 0.04 || heights[i] < 2) continue;
    const alpha = Math.min(90, Math.floor(28 + strength * 55));
    const edge = await sharp({
      create: {
        width: stripW,
        height: heights[i],
        channels: 4,
        background: {
          r: colors[i].rgb[0],
          g: colors[i].rgb[1],
          b: colors[i].rgb[2],
          alpha,
        },
      },
    })
      .png()
      .toBuffer();
    overlays.push({ input: edge, top: tops[i], left: 0 });
  }

  return sharp(jpg)
    .composite(overlays)
    .jpeg({ quality: 78, chromaSubsampling: "4:2:0" })
    .toBuffer();
}

async function writePreview(jpg) {
  if (!previewEnabled || !jpg || !jpg.length) return;
  const now = Date.now();
  if (now - lastPreviewT < PREVIEW_MIN_MS) return;
  lastPreviewT = now;
  try {
    let out = jpg;
    if (visualFx && sharp) {
      out = await renderElegantFx(jpg);
    }
    // Alternar A/B para que fpic recargue (si no, cachea el mismo path)
    previewFlip ^= 1;
    const dest = PREVIEW_PATHS[previewFlip];
    fs.writeFileSync(PREVIEW_TMP, out);
    try {
      fs.renameSync(PREVIEW_TMP, dest);
    } catch (_) {
      fs.copyFileSync(PREVIEW_TMP, dest);
    }
    try {
      fs.copyFileSync(dest, PREVIEW_PATH);
    } catch (_) {}
    Max.outlet("frame", dest.replace(/\\/g, "/"));
  } catch (e) {
    try {
      previewFlip ^= 1;
      const dest = PREVIEW_PATHS[previewFlip];
      fs.writeFileSync(dest, jpg);
      Max.outlet("frame", dest.replace(/\\/g, "/"));
    } catch (_) {}
    fileLog("preview write fail: " + e.message);
  }
}

function decayFlash() {
  for (let i = 0; i < 3; i++) {
    bandFlash[i] *= 0.85;
    if (bandFlash[i] < 0.02) bandFlash[i] = 0;
  }
}

async function processJpeg(jpg) {
  if (!sharp || decodeBusy) return;
  decodeBusy = true;
  try {
    const { data, info } = await sharp(jpg)
      .greyscale()
      .raw()
      .toBuffer({ resolveWithObject: true });
    const width = info.width;
    const height = info.height;
    const gray = data; // 1 byte/pixel

    const means = bandMeans(gray, width, height);
    framesSinceStart++;

    // Primer frame = referencia; sin notas hasta tener par estable
    if (!prevGray || prevW !== width || prevH !== height) {
      prevGray = Buffer.from(gray);
      prevW = width;
      prevH = height;
      lastLevels = [0, 0, 0];
      Max.outlet("levels", 0, 0, 0);
      await writePreview(jpg);
      return;
    }

    const diffs = bandDiffMaps(gray, width, height, prevGray);
    prevGray = Buffer.from(gray);

    // Ganancia moderada: solo motion limpia (sin fallback de brillo)
    const gain = 4 + sensitivity * 12;
    const levels = diffs.map((d) => Math.min(1, d * gain));
    lastLevels = levels;
    Max.outlet("levels", levels[2], levels[1], levels[0]);

    const now = Date.now();
    decayFlash();
    // Espera 2 frames de referencia tras start para no disparar al estabilizar
    if (framesSinceStart > 2) {
      for (let i = 0; i < 3; i++) {
        const change = levels[i];
        if (change < gate) continue;
        if (now - lastNoteAt[i] < noteCooldownMs) continue;
        lastNoteAt[i] = now;
        const pitch = scaleDegree(
          Math.min(1, Math.max(0, means[i])),
          BANDS[i].root
        );
        const vel = Math.max(
          1,
          Math.min(
            maxVelocity,
            Math.floor(change * maxVelocity * (0.5 + sensitivity))
          )
        );
        noteOn(pitch, vel);
        notesFired++;
        bandFlash[i] = Math.min(1, bandFlash[i] + Math.max(change, 0.35));
      }
    }

    Max.outlet(
      "fx",
      bandFlash[0],
      bandFlash[1],
      bandFlash[2],
      levels[0],
      levels[1],
      levels[2]
    );

    await writePreview(jpg);

    frameCount++;
    if (now - lastFpsT >= 1000) {
      fps = frameCount;
      frameCount = 0;
      lastFpsT = now;
      status(
        "OK fps " +
          fps +
          " notes " +
          notesFired +
          " | mov B:" +
          levels[2].toFixed(3) +
          " M:" +
          levels[1].toFixed(3) +
          " T:" +
          levels[0].toFixed(3)
      );
    }
  } catch (_) {
    // frame corrupto / incompleto
  } finally {
    decodeBusy = false;
  }
}

function feedUdp(msg) {
  if (!msg || msg.length <= 8) return;
  jpegBuf = Buffer.concat([jpegBuf, msg.slice(8)]);
  if (jpegBuf.length > 2000000) jpegBuf = Buffer.alloc(0);

  while (true) {
    const soi = jpegBuf.indexOf(Buffer.from([0xff, 0xd8]));
    if (soi < 0) {
      if (jpegBuf.length > 500000) jpegBuf = Buffer.alloc(0);
      break;
    }
    if (soi > 0) jpegBuf = jpegBuf.slice(soi);
    const eoi = jpegBuf.indexOf(Buffer.from([0xff, 0xd9]), 2);
    if (eoi < 0) break;
    const frame = jpegBuf.slice(0, eoi + 2);
    jpegBuf = jpegBuf.slice(eoi + 2);
    processJpeg(frame);
  }
}

function start() {
  try {
    ensureDeps();
  } catch (e) {
    status("ERROR: " + e.message);
    return;
  }
  if (running) {
    status("already running");
    return;
  }

  const local = bindIp || detectBindIp() || "192.168.29.2";
  try {
    tx = dgram.createSocket("udp4");
    tx.bind({ address: local === "0.0.0.0" ? undefined : local, port: 0 });

    rx = dgram.createSocket({ type: "udp4", reuseAddr: true });
    rx.on("message", feedUdp);
    rx.on("error", (e) => status("rx error: " + e.message));
    // Preferir bind a la IP del WiFi del microscopio (no 0.0.0.0 si hay otra ruta)
    const listenAddr =
      local && local !== "0.0.0.0" ? local : detectBindIp() || "0.0.0.0";
    rx.bind(
      {
        address: listenAddr === "0.0.0.0" ? undefined : listenAddr,
        port: DATA_PORT,
      },
      () => status("UDP listen " + listenAddr + ":" + DATA_PORT)
    );

    sendCmd(jh(0x10, 0x00));
    setTimeout(() => sendCmd(jh(0x20, 0x00)), 40);
    setTimeout(() => {
      sendCmd(jh(0xd0, 0x01));
      sendCmd(jh(0xd0, 0x01));
    }, 80);

    keepaliveTimer = setInterval(() => sendCmd(jh(0xd0, 0x01)), 2000);
    running = true;
    prevGray = null;
    notesFired = 0;
    framesSinceStart = 0;
    status("started cam=" + camIp + " bind=" + local + " (solo movimiento)");
    ensureWinMidi();
    // Acorde de prueba → altavoces vía GS Wavetable
    const beep = () => {
      noteOn(60, 120);
      noteOn(64, 110);
      noteOn(67, 110);
    };
    setTimeout(beep, 600);
    setTimeout(beep, 1400);
    setTimeout(() => {
      status("AUDIO listo (WinMIDI) — mueve bajo el objetivo");
    }, 1000);
  } catch (e) {
    status("start failed: " + e.message);
    stop();
  }
}

function stop() {
  running = false;
  if (keepaliveTimer) {
    clearInterval(keepaliveTimer);
    keepaliveTimer = null;
  }
  try {
    sendCmd(jh(0xd0, 0x02));
  } catch (_) {}
  allNotesOff();
  stopWinMidi();
  if (rx) {
    try {
      rx.close();
    } catch (_) {}
    rx = null;
  }
  if (tx) {
    try {
      tx.close();
    } catch (_) {}
    tx = null;
  }
  jpegBuf = Buffer.alloc(0);
  status("stopped");
}

function freeze() {
  prevGray = null;
  status("reference frame reset");
}

function markReady() {
  scriptReady = true;
  status("READY — auto-start…");
  Max.outlet("ready");
  if (!autoStarted) {
    autoStarted = true;
    setTimeout(() => {
      try {
        start();
      } catch (e) {
        status("auto-start fail: " + e.message);
      }
    }, 400);
  }
}

async function bootInstallThenReady() {
  try {
    await npmInstallOnce();
  } catch (e) {
    status("WARN install: " + e.message);
    // sigue: vendor puede bastar
    tryLoadSharp();
  }
  markReady();
}

// Handlers primero (para que Max marque el script como listo)
Max.addHandler("start", () => {
  if (installing) {
    status("espera: npm install en curso…");
    return;
  }
  if (!scriptReady) {
    status("aún arrancando…");
    return;
  }
  start();
});
Max.addHandler("stop", () => stop());
Max.addHandler("freeze", () => freeze());
Max.addHandler("preview", (v) => {
  previewEnabled = Number(v) !== 0 && String(v) !== "off";
  status("preview=" + (previewEnabled ? "on" : "off"));
});
Max.addHandler("fxvis", (v) => {
  visualFx = Number(v) !== 0 && String(v) !== "off";
  status("fxvis=" + (visualFx ? "on" : "off"));
});
Max.addHandler("install", () => {
  status("reinstalando deps…");
  const root = packageRoot();
  try {
    fs.unlinkSync(path.join(root, "node_modules", ".maxview_installed"));
  } catch (_) {}
  sharp = null;
  installing = false;
  npmInstallOnce()
    .then(() => status("install OK"))
    .catch((e) => status("install ERROR: " + e.message));
});
Max.addHandler("bang", () => {
  status(
    installing
      ? "installing…"
      : running
        ? "running fps~" + fps
        : scriptReady
          ? "idle ready"
          : "booting"
  );
});
Max.addHandler("cam", (ip) => {
  camIp = String(ip);
  status("cam=" + camIp);
});
Max.addHandler("bind", (ip) => {
  bindIp = String(ip);
  status("bind=" + bindIp);
});
Max.addHandler("sensitivity", (v) => {
  sensitivity = Math.max(0, Math.min(1, Number(v)));
});
Max.addHandler("gate", (v) => {
  gate = Math.max(0, Math.min(1, Number(v)));
});
Max.addHandler("noise", (v) => {
  noiseFloor = Math.max(1, Math.min(64, Number(v) | 0));
  status("noiseFloor=" + noiseFloor);
});
Max.addHandler("velocity", (v) => {
  maxVelocity = Math.max(1, Math.min(127, Number(v) | 0));
});
Max.addHandler("hold_ms", (v) => {
  holdMs = Math.max(30, Math.min(2000, Number(v) | 0));
});
Max.addHandler("scale", (name) => {
  const n = String(name).toLowerCase();
  if (SCALES[n]) {
    scaleName = n;
    status("scale=" + scaleName);
  } else status("scales: major minor pentatonic chromatic");
});

Max.addHandler(Max.MESSAGE_TYPES.DESTROY, () => stop());
process.on("exit", () => stop());

// Registrar handlers ya → Max deja de decir "not ready"
// Luego npm install (1ª vez) y READY
setImmediate(() => {
  bootInstallThenReady();
});
