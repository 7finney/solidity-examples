pragma solidity ^0.5.0;

contract SalaryCalc{
    function calc(uint gross) public view returns(string memory, uint, string memory, uint) {
        uint tax = (14 * gross)/100;
        uint net = gross -tax;
        return ("Income:", net, "Tax:", tax);
    }
}
