# cml 

## Build 

Magic incantation 

```sh
wasm-pack build --target deno --out-dir deno
cp nodejs/cardano_multiplatform_lib_bg.wasm cardano_multiplatform_lib_bg.wasm
cp deno/cardano_multiplatform_lib.js cardano_multiplatform_lib.generated.js
```
