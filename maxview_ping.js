/** Test mínimo: si este tampoco llega a READY, el problema es Node for Max / ruta del .js */
const Max = require("max-api");
Max.post("[MaxView ping] loaded");
Max.addHandler("start", () => {
  Max.post("[MaxView ping] start OK");
  Max.outlet("status", "ping start OK");
});
Max.addHandler("bang", () => Max.post("[MaxView ping] bang"));
Max.post("[MaxView ping] READY");
Max.outlet("ready");
