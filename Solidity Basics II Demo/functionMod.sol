// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FunctionModify {
    mapping(address => uint256) public valueMapping;

    modifier nonZeroValue(uint256 _value) {
        require(_value != 0, "Value cannot be zero");
        _;
    }

    modifier valueHasBeenSet() {
        require(valueMapping[msg.sender] != 0, "No value set for sender");
        _;
    }

    function setValue(uint256 _value) public {
        valueMapping[msg.sender] = _value;
    }


    function getValue() public view returns (uint256) {
        return valueMapping[msg.sender];
    }

}
