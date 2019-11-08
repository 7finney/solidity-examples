pragma solidity >=0.5.0;

contract Factorial {
  function fact(uint factNum) public view returns(string memory, uint, string memory, uint) {
    uint factorial = 1;
    if(factNum < 0) {
      return("Error! Factorial of a negative number doesnot exist", 0, "", 0);
    } else {
      for(uint i = 1; i <= factNum; i++) {
        factorial = factorial * i;
      }
      return("Factorial of", factNum, "is", factorial);
    }
  }
}
