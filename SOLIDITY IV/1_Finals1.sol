// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FallbackExample {
    event FallbackReceived(address sender, uint amount);
    event PaymentReceived(address payer, uint256 amount);

    fallback() external payable {
        emit FallbackReceived(msg.sender, msg.value);
    }

    receive() external payable {
        emit PaymentReceived(msg.sender, msg.value);
    }
}

//REFLECTION
//The contract "FallbackExample" includes a fallback function and a receive function to handle incoming Ether payments. 
//These functions emit events to log the sender's address and the amount received. 
//This setup ensures the contract can effectively manage and record incoming transactions, enhancing its flexibility and transparency in handling payments.