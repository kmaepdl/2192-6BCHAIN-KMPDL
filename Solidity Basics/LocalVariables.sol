// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract LocalVariables{
    uint public i;
    uint public k;
    bool public b;
    address public myAddress;

    function foo() external {
        uint x = 123;
        bool f = false;
        x += 456;
        f = true;

        k = 26;
        i = 123;
        b = true;
        myAddress = address(1);
        
    }
}
//insights: After deploying and selecting foo, the int i became 0, which is originally 123. 
//Also, the bool b became false, which is true at first.
//The address also became 0000 all, before it has 01 at the end.