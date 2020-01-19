const Web3 = require('web3');
const solc = require('solc');
const fs = require('fs');
const path = require('path');
// var web3 = Web3(Web3.HTTPProvider("http://localhost:8545"))
const p = path.resolve(__dirname, "reciept.sol");
const web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:8545"));
// web3.eth.getAccounts().then(console.log);
const source = fs.readFileSync(p, 'UTF-8');
const input = {
    language: 'Solidity',
    sources: {
      'reciept.sol': {
        content: source
      }
    },
    settings: {
      outputSelection: {
        '*': {
          '*': ['*']
        }
      }
    }
  };
const pbi = JSON.parse(solc.compile(JSON.stringify(input)));

const abi = pbi.contracts['reciept.sol'].ClientReceipt.abi;
const ClientReceipt = new web3.eth.Contract(abi, "0x989CD4D7a3374EEf60f038027C22cf876E27f066");
ClientReceipt.methods.deposit("0x7e5605F81c51B813089D19950FF087136a1E7cBF").send({ from: "0x7e5605F81c51B813089D19950FF087136a1E7cBF" }).then((result) => {
    if (result){}
        console.log("result:", result);
});

web3.eth.getAccounts().then(e => {
  web3.eth.getBalance(e);
});

// console.log("0th acc.", )