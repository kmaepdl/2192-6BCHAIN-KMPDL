// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SendEther {
    constructor() payable {}

    receive() external payable { }

    function sendViaTransfer (address payable _to) external payable {
    _to. transfer (100);
    }

    function sendViaSend (address payable _to) external payable {
        bool sent = _to.send(100);
        require(sent, "Sending failed.");
    }

    function sendViaCall (address payable _to) external payable {
        (bool success, ) = _to.call{value: 100}("");
        require(success, "Call failed.");
    }
}

contract SelfDestruct {
    event Deposit (uint amount);
    event Withdraw(uint amount);
    address public owner = msg.sender;

    receive() external payable {
        emit Deposit(msg.value);
    }

    function withdraw() external {
        require(msg.sender == owner, "Not owner!");
        emit Withdraw(address(this).balance);
        selfdestruct(payable(msg.sender));
    }
}

//REFLECTION
//The Solidity code comprises two contracts. The "SendEther" contract enables the sending and receiving of Ether through various methods. 
//It includes functions like sendViaTransfer, sendViaSend, and sendViaCall, showcasing different ways to transfer Ether. 
//On the other hand, the "SelfDestruct" contract features a self-destruct mechanism triggered by the contract owner. 
//This mechanism transfers the contract's balance to the owner's address and terminates the contract.