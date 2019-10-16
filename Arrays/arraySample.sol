pragma solidity ^0.5.0;
pragma experimental "ABIEncoderV2";

contract Array {

    uint[3][3] public fixedSized;   // fixed sized array
    uint[][3] arrayDynamic;  // dynamic array with each element an array with 3
    uint[3][] dynamicArray;  // fixed sized array with each element a dynamic
    uint [][] dynamicArr;    // dynamic array with dynamic array elemnts.
    constructor () public {
      uint j;
      for (uint i=0;i<3;i++){
          j = i+1;
          fixedSized[i] = [j*1, j*2, j*3];
      }
      uint[3] memory temp = [uint(1),2,3];
      arrayDynamic[0] = new uint[](4);
      arrayDynamic[1] = [1,2,3,4,5,6,7,8];
      arrayDynamic[2] = temp;
      dynamicArray = new uint[2][](3);
      dynamicArray[0] = [1,2];
      dynamicArray[1] = [6,7];
      dynamicArray[2] = [9,0];
    }

    function setFixedSized(uint[3][3] memory inputArr) public{
        fixedSized = inputArr;
    }

    function setDynamicArray(uint[3][] memory inputArr) public {
        dynamicArray = inputArr;
    }

    // This function is illegal
    function setArrayDynamic(uint[][3] memory inputArr) public {
        arrayDynamic = inputArr;
    }

    // This function is illegal
    function setDynamicArr(uint[][] memory inputArr) public {
        dynamicArr = inputArr;
    }

    function getFixedSized() public view returns (uint[3][3] memory){
        return fixedSized;
    }

    function getDynamicArray() public view returns (uint[3][] memory){
        return dynamicArray;
    }

    // This function is illegal
    function getArrayDynamic() public view returns (uint[][3] memory){
        return arrayDynamic;
    }

    // This function is illegal
    function getDynamicArr() public view returns (uint[][] memory){
        return dynamicArr;
    }

    function getElementFixedSized(uint i, uint j) public view returns(uint){
      return fixedSized[i][j];
    }

    function getElementDynamicArray (uint i, uint j) public view returns(uint){
      return dynamicArray[i][j];
    }

    function getElementArrayDynamic (uint i, uint j) public view returns(uint){
      return arrayDynamic[i][j];
    }

    function getElementDynamicArr (uint i, uint j) public view returns(uint){
      return dynamicArr[i][j];
    }
}
