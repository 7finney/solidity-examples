pragma solidity ^0.6.0;

import "@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol";

contract UpgradableToken is Initializable, ERC20UpgradeSafe
{
    function initialize(string memory _name, string memory _symbol) public initializer
    {
        ERC20UpgradeSafe.__ERC20_init(_name, _symbol);
    }
}