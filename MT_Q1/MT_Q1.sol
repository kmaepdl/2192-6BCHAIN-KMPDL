// SPDX-License-Identifier: MIT

//De Leon, Kimberly Mae P.
//Wd - 401

pragma solidity ^0.8.3;

contract MQuizContract {
    address public owner;
    uint public age;
    uint public hoursWorked;
    uint public hourlyRate;
    uint public totalSalary;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    modifier rateGreaterThanZero(uint rate) {
        require(rate > 0, "Hourly rate must be greater than zero");
        _;
    }

    modifier hoursWorkedGreaterThanZero(uint hour) {
        require(hour > 0, "Hours worked must be greater than zero");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function setAge(uint _age) public {
        age = _age;
    }

    function setHrsWrk(uint _hoursWorked) public 
    hoursWorkedGreaterThanZero( _hoursWorked) {
        hoursWorked = _hoursWorked;
    }

    function setRate(uint _hourlyRate) public onlyOwner
    rateGreaterThanZero( _hourlyRate) {
        hourlyRate = _hourlyRate;
    }

    function calculateTotSal() public onlyOwner {
        require(hourlyRate > 0 && hoursWorked > 0, "Hourly rate and hours worked must be grater than zero");
        totalSalary = hoursWorked * hourlyRate;
    }

}