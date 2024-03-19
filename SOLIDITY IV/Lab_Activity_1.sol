// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EtherWallet {
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    receive() external payable {}

    function withdraw(uint256 _amount) external {
        require(msg.sender == owner, "Only owner can withdraw");
        require(_amount <= address(this).balance, "Insufficient balance");
        owner.transfer(_amount);
    }

    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }
}

//REFLECTION
//The "EtherWallet" contract lets people put in and take out Ether. 
//Only the person who created the contract can take out Ether. 
//It keeps track of how much Ether it has. It's a simple way to manage Ether safely.