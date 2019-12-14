pragma solidity ^0.5.0;
pragma experimental ABIEncoderV2;
contract complex {
    struct complex {
        int x;
        int y;
        uint f;
    }
    complex public cx;
    function complexAddition(complex memory a, complex memory b) public view returns(complex memory c) {
        c.x = a.x + b.x;
        c.y = a.y + b.y;
        return c;
    }

    function assign(int x, int y) public view returns(complex memory c) {
        c.x = x;
        c.y = y;
    }
}
