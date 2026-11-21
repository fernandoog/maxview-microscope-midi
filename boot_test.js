const path = require("path");
const fs = require("fs");
console.log("dirname", __dirname);
console.log("cwd", process.cwd());
const root = __dirname;
const sharpPath = path.join(root, "node_modules", "sharp");
console.log("sharp path exists", fs.existsSync(sharpPath));
try {
  const sharp = require(sharpPath);
  console.log("sharp load OK");
} catch (e) {
  console.log("sharp load FAIL", e.message);
}
