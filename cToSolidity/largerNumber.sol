pragma solidity >=0.5.0;

contract Larger_number {
  function maximum(uint num1, uint num2) public view returns(uint) {
    uint res = num1 > num2 ? num1 : num2;
    return res;
  }
  function main(uint num1, uint num2, uint num3) public view returns(string memory, uint) {
    uint max = maximum(num1, num2);

    return("max is:", maximum(max, num3));
  }
}
