pragma solidity ^0.6.0;
import "../openzeppelin-contracts/token/ERC20/ERC20.sol";
// https://docs.openzeppelin.com/contracts/3.x-rc/erc20

contract ESSNSToken is ERC20 {
    constructor(string memory _name, string memory _id) ERC20(_name, _id) public
    {
        _mint(msg.sender, 100);
    }
}