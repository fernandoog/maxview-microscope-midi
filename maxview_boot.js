/**
 * Max JS (no Node) — abre la ventana de vídeo y fuerza audio.
 * Usar con objeto: js maxview_boot.js
 */
autowatch = 1;
inlets = 1;
outlets = 2;

var PREVIEW = "MaxView_Preview.maxpat";
var PREVIEW_FULL =
  "D:/Dv/Repo/Android/MaxView/MaxViewInstrument/MaxView_Preview.maxpat";

function resolvePreview() {
  try {
    if (this.patcher && this.patcher.filepath) {
      var fp = String(this.patcher.filepath).replace(/\\/g, "/");
      var slash = fp.lastIndexOf("/");
      if (slash >= 0) {
        return fp.substring(0, slash + 1) + PREVIEW;
      }
    }
  } catch (e) {}
  return PREVIEW_FULL;
}

function openvideo() {
  var full = resolvePreview();
  post("[MaxView] opening video: " + full + "\n");
  try {
    max.openfile(PREVIEW, full);
  } catch (e1) {
    post("[MaxView] openfile fail: " + e1 + "\n");
    try {
      // fallback: solo nombre (search path)
      max.openfile(PREVIEW, PREVIEW);
    } catch (e2) {
      post("[MaxView] openfile fallback fail: " + e2 + "\n");
    }
  }
  outlet(0, "video_opened");
}

function audioon() {
  post("[MaxView] audio on\n");
  outlet(1, 1); // -> ezdac~
  try {
    // Max 8/9: intenta arrancar motor de audio
    if (typeof max.startaudio === "function") max.startaudio();
  } catch (e) {}
}

function bang() {
  audioon();
  openvideo();
}

function msg_int(v) {
  if (v === 1) bang();
}

function open() {
  openvideo();
}
