"use strict";

exports.mapSetFooJson = m => {
  let n = new Map(m);
  n.set("Foo", 42);
  let s = JSON.stringify(Array.from(n));
  console.log("JS JSON: " + s);
  return s;
};