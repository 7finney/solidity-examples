pragma solidity ^0.6.0;

import "@openzeppelin/contracts-ethereum-package/contracts/Initializable.sol";
import "@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol";

contract MyContract is Initializable {
    IERC20 public token;

    function initialize(IERC20 _token) public initializer {
        token = _token;
    }
}