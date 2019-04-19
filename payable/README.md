## **Payable contract**
This is a simple deposit contract.
* payable is a modifier that can be added to a function.
* It is used to receive funds in ether to a contract.

The address type comes in two flavours, which are largely identical:
* `address`: Holds a 20 byte value (size of an Ethereum address).
* `address payable`: Same as `address`,but with the additional members `transfer` and `send`.

The idea behind this distinction is that `address payable` is an address you can send Ether to, while a plain `address` cannot be sent Ether.

> The distinction between `address` and `address payable` was introduced with version 0.5.0. Also starting from that version, contracts do not derive from the address type, but can still be explicitly converted to `address` or to `address payable`, if they have a payable fallback function.



##### **Deployed contract**

* We are depositing 5000 wei to the contract address.

 ![deployed contract](https://user-images.githubusercontent.com/9979182/56079524-904f0c80-5e13-11e9-9dd2-0b49087191f9.png)
