/**
 * Diagnóstico mínimo Node for Max.
 * Si ves READY en el patch / Max Window, node.script funciona.
 */
const fs = require("fs");
const path = require("path");

const LOG = path.join(__dirname, "node_debug.log");

function fileLog(msg) {
  try {
    fs.appendFileSync(
      LOG,
      new Date().toISOString() + " " + msg + "\n",
      "utf8"
    );
  } catch (_) {}
}

fileLog("hello_maxview.js loading __dirname=" + __dirname);

let Max;
try {
  Max = require("max-api");
} catch (e) {
  fileLog("max-api FAIL: " + e.message);
  throw e;
}

function say(msg) {
  fileLog(msg);
  try {
    Max.post("[MaxView] " + msg);
  } catch (_) {}
  try {
    Max.outlet("status", msg);
  } catch (_) {}
}

say("hello loaded");
say("READY (hello) — pulsa Start");

Max.addHandler("start", () => {
  say("hello START ok");
  Max.outlet("midi", 60, 100);
  setTimeout(() => Max.outlet("midi", 60, 0), 250);
});

Max.addHandler("stop", () => say("hello stop"));
Max.addHandler("bang", () => say("hello bang"));
Max.addHandler("cam", (ip) => say("cam " + ip));
Max.addHandler("bind", (ip) => say("bind " + ip));
Max.addHandler("sensitivity", () => {});
Max.addHandler("gate", () => {});
Max.addHandler("velocity", () => {});
Max.addHandler("hold_ms", () => {});
Max.addHandler("scale", () => {});
Max.addHandler("freeze", () => {});

try {
  Max.outlet("ready");
} catch (e) {
  fileLog("ready outlet fail: " + e.message);
}

fileLog("hello_maxview.js finished top-level");
