pragma solidity >=0.5.0 <0.6.0;

contract Payable {
    mapping(address => uint256) public vault;
    event Deposit(
        address indexed _from,
        uint _value
    );

    function deposit() public payable {
        // Events are emitted using `emit`, followed by
        // the name of the event and the arguments
        // (if any) in parentheses. Any such invocation
        // (even deeply nested) can be detected from
        // the JavaScript API by filtering for `Deposit`.
        vault[msg.sender] = msg.value;
        emit Deposit(msg.sender, msg.value);
    }
}
