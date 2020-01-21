// pragma solidity >=0.4.0 <0.6.0;

// contract C {
//     uint private data;

//     function f(uint a) public pure returns(uint b) { return a + 1; }
//     function setData(uint a) public { data = a; }
//     function getData() public view returns(uint) { return data; }
//     function compute(uint a, uint b) external pure returns (uint) { return a + b; }
// }

// // This will not compile
// contract D {
//     function readData() public {
//         C c = new C();
//         uint local = c.f(7); // error: member `f` is not visible
//         c.setData(3);
//         local = c.getData();
//         local = c.compute(3, 5); // error: member `compute` is not visible
//     }
// }

pragma solidity >=0.4.0 <0.6.0;

contract C {
    uint public data = 42;
}

contract Caller {
    C c = new C();
    function f() public view returns (uint) {
        return c.data();
    }
}

// contract E is C {
//     function g() public {
//         C c = new C();
//         uint val = compute(3, 5); // access to internal member (from derived to parent contract)
//     }
// }