const standardJSON = require('./output//greeter_standard.json');
const combinedJSON = require('./output/greeter_combined.json');
const contractItemsArr = [
  'abi',
  'asm',
  'bin',
  'bin-runtime',
  'devdoc',
  'generated-sources',
  'generated-sources-runtime',
  'hashes',
  'metadata',
  'opcodes',
  'srcmap',
  'srcmap-runtime',
  'storage-layout',
  'userdoc'
];
function decodeJSON(json, type) {
  if(type === 'combined-json') {
    const contractsKeys = Object.keys(json.contracts);
    for (i = 0; i < contractsKeys.length; i++) {
      const activeContractsKey = contractsKeys[i];
      const activeContractItem = json.contracts[activeContractsKey];
      const { abi, bin } = activeContractItem;
      console.log(abi);
      console.log(bin);
    }
  } if (type === 'standard-json') {
    const contractsKeys = Object.keys(json.contracts);
    for (i = 0; i < contractsKeys.length; i++) {
      const activeContractsKey = contractsKeys[i];
      const contractFileKeys = Object.keys(json.contracts[activeContractsKey])
      for(j = 0; j < contractFileKeys.length; j++) {
        const activeContractFileKey = contractFileKeys[j];
        const activeContractFileItem = json.contracts[activeContractsKey][activeContractFileKey];
        const { abi, evm } = activeContractFileItem;
        console.log(abi);
        console.log(evm.bytecode.object);
      }
    }
  }
}

console.log('.........................................................................................');
decodeJSON(standardJSON, 'standard-json');
console.log('.........................................................................................');
decodeJSON(combinedJSON, 'combined-json');