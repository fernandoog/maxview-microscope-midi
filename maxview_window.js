/**
 * Control de ventana del preview: Full / Win / Mon1 / Mon2.
 * outlet 0 → thispatcher (window + script sendbox)
 * Redimensiona fpic (pic) al tamaño real del monitor.
 */
autowatch = 1;
inlets = 1;
outlets = 1;

var BAR = 36;
var SCREENS = [
  { x: 0, y: 0, w: 2560, h: 1080 },
  { x: 2560, y: -164, w: 1536, h: 864 },
  { x: 2560, y: -164, w: 1536, h: 864 },
];

function winmsg() {
  var a = arrayfromargs(arguments);
  outlet(0, a);
}

function sendbox() {
  var a = ["script", "sendbox"];
  for (var i = 0; i < arguments.length; i++) a.push(arguments[i]);
  outlet(0, a);
}

function layout(w, h) {
  var picH = Math.max(120, h - BAR);
  // fpic llena el área bajo la barra
  sendbox("pic", "presentation_rect", 0, BAR, w, picH);
  sendbox("pic", "autofit", 1);
  try {
    var o = this.patcher.getnamed("pic");
    if (o) {
      o.message("presentation_rect", 0, BAR, w, picH);
      o.message("autofit", 1);
    }
  } catch (e) {}
}

function setrect(left, top, right, bottom) {
  winmsg("fullscreen", 0);
  winmsg("window", "flags", "nozoom", 0);
  winmsg("window", "flags", "grow", 1);
  winmsg("window", "size", left, top, right, bottom);
  winmsg("window", "exec");
  layout(right - left, bottom - top);
}

function full() {
  // Llena el monitor primario y escala el vídeo (fullscreen nativo no escala fpic)
  var s = SCREENS[0];
  setrect(s.x, s.y, s.x + s.w, s.y + s.h);
  winmsg("fullscreen", 1);
  layout(s.w, s.h);
}

function win() {
  var w = 1280;
  var h = 760;
  setrect(80, 40, 80 + w, 40 + h);
}

function mon(n) {
  var i = Math.max(0, Math.min(SCREENS.length - 1, (n | 0) - 1));
  var s = SCREENS[i];
  setrect(s.x, s.y, s.x + s.w, s.y + s.h);
}

function mon1() {
  mon(1);
}
function mon2() {
  mon(2);
}
function mon3() {
  mon(3);
}

function bang() {
  win();
}
