pragma solidity >=0.5.0;

contract Bubble_sort {
  uint[4] simpleFixArr;

  function sort(uint[4] memory simpleFixArr) public view returns(uint256[4] memory) {
      uint length = simpleFixArr.length;

      for(uint i = 0; i < length; i++) {
        for (uint j = 0; j < (length - i - 1); j++) {
            //Compare the adjacent positions
            if(simpleFixArr[j] > simpleFixArr[j+1]) {
                //Swap the numbers
                uint tmp = simpleFixArr[j];
                simpleFixArr[j] = simpleFixArr[j+1];
                simpleFixArr[j+1] = tmp;
            }
        }
      }
      return(simpleFixArr);
  }
}
