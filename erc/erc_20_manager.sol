pragma solidity ^0.6.0;

import "./erc_20_example.sol";

contract ERC20Manager {
    address payable seller;
    uint public price = 7 finney;
    ESSNSToken tokenContract;

    constructor() public
    {
        seller = msg.sender;
    }

    modifier onlyOwner
    {
        require(
            msg.sender == seller,
            "Only owner can call this function."
        );
        _;
    }
    modifier isConfigured
    {
        require(
            tokenContract != ESSNSToken(0),
            "Token is not configured yet"
        );
        _;
    }

    modifier gtPrice
    {
        require(msg.value >= price, "Value should be greater than price!");
        _;
    }

    function config(address _tokenContract) public onlyOwner
    {
        tokenContract = ESSNSToken(_tokenContract);
    }

    // get configured token name
    function getTokenName() public view isConfigured returns (string memory)
    {
        return tokenContract.name();
    }

    // proxy balanceOf
    function balanceOf(address addr) public view isConfigured returns (uint256)
    {
        return tokenContract.balanceOf(addr);
    }

    // buy token
    function buy() external payable isConfigured gtPrice
    {
        seller.transfer(msg.value);
        uint amount = msg.value / price;
        tokenContract.transferFrom(seller, msg.sender, amount);
    }
    // buy with ref
    function buy(address ref) external payable isConfigured gtPrice
    {
        seller.transfer(msg.value);
        if(tokenContract.balanceOf(ref) > 0) {
            // reward referral token
            tokenContract.transferFrom(seller, ref, 1);
        }
        uint amount = msg.value / price;
        tokenContract.transferFrom(seller, tx.origin, amount);
    }

    // fallback
    fallback() external payable
    {
        revert("Not enough Ether provided.");
    }
}