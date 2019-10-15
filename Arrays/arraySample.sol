pragma solidity ^0.5.12;

contract Array {

    uint[3][3] fixedSized;  //fixed sized array`
    uint[][3] arrayDynamic;  //dynamic array with each element an array with 3 elements
    uint[3][] dynamicArray;  //fixed sized array with each element a dynamic array
    uint [][] dynamicArr;
    uint [3][3][3] fixedThreeD;
    uint length;
    constructor () public {
      uint j;
      for (uint i=0;i<3;i++){
          j = i+1;
          fixedSized[i] = [j*1, j*2, j*3];
      }
      for(uint i=0;i<27;i++){

      }
      uint[3] memory temp = [uint(1),2,3];
      arrayDynamic[0] = new uint[](4);
      arrayDynamic[1] = [1,2,3,4,5,6,7,8];
      arrayDynamic[2] = temp;
      dynamicArray = new uint[2][](3); ///without this invalid opcode error
      dynamicArray[0] = [1,2];
      dynamicArray[1] = [6,7];
      dynamicArray[2] = [9,0];
      length = arrayDynamic.length;
    }
    function getFixedSized() public view returns (uint[3][3] memory){
        return fixedSized;
    }
    // function getArrayDynamic() public view returns (uint[3][] memory temp){   //// dynamic array can't be passed or returned from the function
    //     // uint[][] memory temp;
    //     // temp = new uint[3][](length);
    //     for (uint i=0;i<length;i++){
    //         for (uint j=0;j<arrayDynamic[i].length;j++){
    //             temp[i][j] = new uint[](arrayDynamic[i].length);
    //             temp[i][j] = arrayDynamic[i][j];
    //         }
    //     }
    //     return temp;
    // }
    function getDynamicArray() public view returns (uint[3][] memory){
        return dynamicArray;
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

    // function getElementDynamicArr (uint i, uint j) public view returns(uint){
    //
    // }
}
