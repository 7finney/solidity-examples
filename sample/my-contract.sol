pragma solidity >=0.5.0 <0.6.0;
contract MyContract {
    string value;
    constructor() public {
        value = "myvalue";
    }
    function get() public view returns(string memory) {
        return value;
    }
    function set(string memory _value) public {
        value = _value;
    }
}