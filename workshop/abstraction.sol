pragma solidity >=0.4.0 <0.6.0;
contract vehicle {
    function noOfWheels() public view returns (uint);
}

contract Car is vehicle {
    function noOfWheels() public view returns (uint){ return 4; }
}