/**
 * MaxView boot — audio on + open video preview.
 * Instrument sound = Node WinMIDI (not Max noteout).
 */
autowatch = 1;
inlets = 1;
outlets = 2;
// 0: status (set …) → UI
// 1: 1 → ezdac~

var PREVIEW = "MaxView_Preview.maxpat";
var PREVIEW_FULL =
  "D:/Dv/Repo/Android/MaxView/MaxViewInstrument/MaxView_Preview.maxpat";

function resolvePreview() {
  try {
    if (this.patcher && this.patcher.filepath) {
      var fp = String(this.patcher.filepath).replace(/\\/g, "/");
      var slash = fp.lastIndexOf("/");
      if (slash >= 0) return fp.substring(0, slash + 1) + PREVIEW;
    }
  } catch (e) {}
  return PREVIEW_FULL;
}

function do_openvideo() {
  var full = resolvePreview();
  post("[MaxView] video: " + full + "\n");
  try {
    max.openfile(PREVIEW, full);
  } catch (e1) {
    post("[MaxView] openfile: " + e1 + "\n");
  }
}

function audioon() {
  outlet(1, 1);
  try {
    if (typeof max.startaudio === "function") max.startaudio();
  } catch (e) {}
  outlet(0, "set", "audio OK · WinMIDI → altavoces");
}

function bang() {
  audioon();
  do_openvideo();
}

function openvideo() {
  do_openvideo();
}

function open() {
  do_openvideo();
}
