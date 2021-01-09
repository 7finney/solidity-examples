pragma solidity >=0.7.0;

contract FunctionMutate {
  uint8 public mutation;
  function mutate(uint8 _val) public {
    mutation = _val;
  }
}

// 0x968062D924c3b364d264d3Fd365271FD5295dC0E
// [{"internalType":"uint8","name":"_val","type":"uint8", "value": "1"}]