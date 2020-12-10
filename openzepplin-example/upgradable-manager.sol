pragma solidity ^0.6.0;

import "@openzeppelin/contracts/proxy/ProxyAdmin.sol";
import "@openzeppelin/contracts-ethereum-package/contracts/Initializable.sol";
import "@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol";

contract TokenAdmin is ProxyAdmin, Initializable {
    IERC20 public token;

    function initialize(IERC20 _token) public initializer {
        token = _token;
    }
}