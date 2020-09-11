pragma solidity ^0.6.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract SampleToken is ERC20 {
    constructor(string memory _name, string memory _id) ERC20(_name, _id) public
    {
        _mint(msg.sender, 100);
    }
}