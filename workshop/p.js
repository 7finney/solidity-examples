var Web3 = require('web3');
// var web3 = Web3(Web3.HTTPProvider("http://localhost:8545"))
var web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:8545"));
web3.eth.getAccounts().then(console.log);

var abi = '[{"constant":false,"inputs":[],"name":"deposit","outputs":[],"payable":true,"stateMutability":"payable","type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"vault","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_from","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Deposit","type":"event"}]';
var ClientReceipt = new web3.eth.Contract(JSON.parse(abi), "0xcB96c4147583A0aAfEAf694c91b23941F69880E5");
ClientReceipt.methods.deposit().send({ from: "0x649C5Af6056aCEd3eA358412A79B3b30c39019C6" }).then((result) => {
    if (result)
        console.log("result:", result);
});