/**
 * Max JS — arranque: audio Max + puerto MIDI Windows (GS Wavetable).
 */
autowatch = 1;
inlets = 1;
outlets = 3;
// 0: status
// 1: 1 -> ezdac~
// 2: port <name> -> noteout

var PREVIEW = "MaxView_Preview.maxpat";
var PREVIEW_FULL =
  "D:/Dv/Repo/Android/MaxView/MaxViewInstrument/MaxView_Preview.maxpat";

var MIDI_CANDIDATES = [
  "Microsoft GS Wavetable Synth",
  "Sintetizador GS Wavetable de Microsoft",
  "Sintetizador de tabla de ondas Microsoft GS",
  "Microsoft MIDI Mapper",
  "Asignador de MIDI de Microsoft",
];

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
  post("[MaxView] opening video: " + full + "\n");
  try {
    max.openfile(PREVIEW, full);
  } catch (e1) {
    post("[MaxView] openfile: " + e1 + "\n");
  }
}

function audioon() {
  post("[MaxView] forcing Max audio + MIDI out\n");
  outlet(1, 1);
  try {
    if (typeof max.startaudio === "function") max.startaudio();
  } catch (e) {}
  try {
    if (typeof max.showaudiostatus === "function") max.showaudiostatus();
  } catch (e) {}
  for (var i = 0; i < MIDI_CANDIDATES.length; i++) {
    outlet(2, "port", MIDI_CANDIDATES[i]);
  }
  outlet(0, "set", "audio: ezdac + MIDI Wavetable");
}

function bang() {
  audioon();
  do_openvideo();
}

function open() {
  do_openvideo();
}

function openvideo() {
  do_openvideo();
}
