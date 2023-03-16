version       = "0.0.1"
description   = "Null0 Cart"
author        = "A Null0 Cart Maker"
license       = "MIT"
bin           = @["src/main.wasm"]

requires "nim >= 1.6.10"
requires "https://github.com/beef331/wasm3 >= 0.1.7"

task cart, "Build cart":
  selfExec("c -d:release --outDir=. src/main.nim")
  exec("zip -r cart.null0 main.wasm assets/* -x assets/README.md")
