pragma solidity ^0.5.9;
	contract C {
		uint index;
		function f() public pure returns (uint, bool, uint) {
			return (7, true, 2);
		}
		function g() public returns(uint) {
			(uint x, , uint y) = f();
			(x, y) = (y, x);
			(index, , ) = f(); // Sets the index to 7
            return index;
		}
        function get() public view returns(uint) {
            return index;
        }
	}
