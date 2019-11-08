pragma solidity >=0.5.0;

contract Swap {
  function swapNumber(uint num1, uint num2) public view returns(string memory, uint, string memory, uint) {
    num1 = (num1 + num2) - num1;
    num2 = (num1 + num2) - num2;
    return("num1 is:", num1, "num2 is:", num2);
  }
}
