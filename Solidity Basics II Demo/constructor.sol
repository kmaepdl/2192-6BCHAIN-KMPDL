// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    uint256 public myNumber;

    constructor() {
        myNumber = 26;
    }

    /*constructor() {
        valueMapping[msg.sender] = 100;
    }*/
}