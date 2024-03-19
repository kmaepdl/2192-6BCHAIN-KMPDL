// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyFinalsActivity2 {
    address payable public owner;
    uint256 public immutable creationTime;
    uint256 public constant INITIAL_ETH_AMOUNT = 2 ether;
    uint256 public remainingEth;

    event EtherReceived(address indexed sender, uint256 amount);
    event EtherSent(address indexed recipient, uint256 amount);

    modifier onlyOwner {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    constructor() {
        owner = payable(msg.sender);
        creationTime = block.timestamp;
        remainingEth = INITIAL_ETH_AMOUNT;
    }

    receive() external payable {
        remainingEth += msg.value;
        emit EtherReceived(msg.sender, msg.value);
    }

    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }

    function sendEther(address payable recipient, uint256 amount) external onlyOwner {
        require(amount <= remainingEth, "Insufficient balance in the contract");
        recipient.transfer(amount);
        remainingEth -= amount;
        emit EtherSent(recipient, amount);
    }

    function destroy() external onlyOwner {
        selfdestruct(owner);
    }
}
