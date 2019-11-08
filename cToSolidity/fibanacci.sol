pragma solidity ^0.5.0;

contract fibanacci {
    function fib(uint n) public view returns(uint) {
        uint fib = 0;
        uint p = 1;
        uint q = 1;
        if(n == 1)return fib;
        if(n == 2 || n == 3){
            return p;
        }
        else {
            for(uint i = 0; i < n-3; i++) {
                fib = p + q;
                p = q;
                q = fib;
            }
        }
        return q;
    }
}
