# Compile some simple conracts and run them on Ethcode

### Compile
```
solc-static-linux -o output --combined-json abi,asm,ast,bin,bin-runtime,compact-format,devdoc,generated-sources,generated-sources-runtime,hashes,interface,metadata,opcodes,srcmap,srcmap-runtime,storage-layout,userdoc solidity-examples/greeter.sol
```

### Load output `JSON` in ethcode from output directory