var Web3 = require('web3');
// var web3 = Web3(Web3.HTTPProvider("http://localhost:8545"))
var web3 = new Web3(new Web3.providers.HttpProvider("http://127.0.0.1:8545"));
console.log(web3.eth.accounts);
// console.log(web3.eth);

var abi = '[{"constant":false,"inputs":[],"name":"deposit","outputs":[],"payable":true,"stateMutability":"payable","type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"vault","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_from","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Deposit","type":"event"}]';
var ClientReceipt = web3.eth.contract(JSON.parse(abi));
var clientReceipt = ClientReceipt.at("0x74bf166ba668678BF1Aa52787eacd3bB91676566");

var event = clientReceipt.Deposit();

// watch for changes
event.watch(function(error, result){
    // result contains non-indexed arguments and topics
    // given to the `Deposit` call.
    if (!error)
        console.log(result);
});


// Or pass a callback to start watching immediately
var event = clientReceipt.Deposit(function(error, result) {
    if (!error)
        console.log(result);
});