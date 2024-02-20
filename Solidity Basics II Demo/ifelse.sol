// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract IfElse {
    /*function setValue(uint256 _value) public nonZeroValue( _value) {
        if (_value > valueMapping[msg.sender]) {
            valueMapping[msg.sender] = _value;
        }
    }*/

    function foo(uint x) public pure returns (uint) {
        if (x < 10) {
            return 0;
        } else if (x < 0) {
            return 1;
        } else {
            return 2;
        }
 
     } 

     function ternary(uint _x) public pure returns (uint) {
        return _x < 10 ? 1:2;
     }
}