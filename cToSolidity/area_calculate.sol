pragma solidity >=0.5.0;

contract Area_calculate {
    function cal(uint base, uint height) public view returns(string memory, uint) {
      uint area = (base * height) / 2;
      return("Area:", area);
    }
}
