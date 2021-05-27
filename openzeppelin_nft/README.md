# Compile with remapping
```
solc-static-linux -o output --combined-json abi,asm,ast,bin,bin-runtime,compact-format,devdoc,generated-sources,generated-sources-runtime,hashes,interface,metadata,opcodes,srcmap,srcmap-runtime,storage-layout,userdoc @openzeppelin/contracts=/home/user/solidity-examples/openzeppelin_nft/node_modules/@openzeppelin/contracts nft.sol
```