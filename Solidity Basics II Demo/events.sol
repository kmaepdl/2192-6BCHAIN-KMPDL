// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Event {
    event log(address indexed sender, string message);
    event AnotherLog();

    function test() public {
        emit log(msg.sender, "Hello World!");
        emit log(msg.sender, "Hello EVM!");
        emit AnotherLog();
    }
}