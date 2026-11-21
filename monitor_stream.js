const dgram = require("dgram");
const path = require("path");
const fs = require("fs");
const sharp = require("sharp");

const cam = "192.168.29.1";
const bind = "192.168.29.2";
const JH = Buffer.from("JHCMD");
const logPath = path.join(__dirname, "probe_out_monitor.log");
fs.writeFileSync(logPath, "");

const log = (m) => {
  const line = new Date().toISOString().slice(11, 19) + " " + m;
  console.log(line);
  fs.appendFileSync(logPath, line + "\n");
};

const tx = dgram.createSocket("udp4");
const rx = dgram.createSocket({ type: "udp4", reuseAddr: true });
tx.bind({ address: bind, port: 0 });
rx.bind({ address: bind, port: 10900 }, () => log("LISTEN 10900 OK"));
rx.on("error", (e) => log("RX ERR " + e.message));

function send(a, b) {
  tx.send(Buffer.concat([JH, Buffer.from([a, b])]), 20000, cam);
}
send(0x10, 0);
setTimeout(() => send(0x20, 0), 40);
setTimeout(() => {
  send(0xd0, 1);
  send(0xd0, 1);
  log("START stream");
}, 80);

let buf = Buffer.alloc(0);
let frames = 0;
let pkts = 0;
let decodeFail = 0;
let busy = false;
let last = Date.now();

rx.on("message", (msg) => {
  pkts++;
  if (msg.length <= 8) return;
  buf = Buffer.concat([buf, msg.slice(8)]);
  while (true) {
    const soi = buf.indexOf(Buffer.from([0xff, 0xd8]));
    if (soi < 0) {
      if (buf.length > 500000) buf = Buffer.alloc(0);
      break;
    }
    if (soi > 0) buf = buf.slice(soi);
    const eoi = buf.indexOf(Buffer.from([0xff, 0xd9]), 2);
    if (eoi < 0) break;
    const jpg = buf.slice(0, eoi + 2);
    buf = buf.slice(eoi + 2);
    if (busy) continue;
    busy = true;
    sharp(jpg)
      .greyscale()
      .raw()
      .toBuffer({ resolveWithObject: true })
      .then(({ info }) => {
        frames++;
        if (frames === 1) log(`FIRST_FRAME ${info.width}x${info.height}`);
      })
      .catch((e) => {
        decodeFail++;
        if (decodeFail <= 3) log("JPEG fail " + e.message);
      })
      .finally(() => {
        busy = false;
      });
  }
  const now = Date.now();
  if (now - last >= 1000) {
    log(`fps~${frames} pkts=${pkts} fail=${decodeFail}`);
    frames = 0;
    pkts = 0;
    decodeFail = 0;
    last = now;
  }
});

setInterval(() => send(0xd0, 1), 2000);
log("monitor running (sharp)");
