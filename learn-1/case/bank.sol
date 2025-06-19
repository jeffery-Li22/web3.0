// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract SecureBank {
    address public immutable owner;
    bool public isActive = true;

    event Deposit(address indexed depositor, uint256 amount);
    event Withdrawal(address indexed recipient, uint256 amount);
    event ContractDeactivated(uint256 timestamp);

    modifier onlyOwner() {
        require(msg.sender == owner, "Unauthorized: Owner only");
        _;
    }

    modifier whenActive() {
        require(isActive, "Contract is deactivated");
        _;
    }

    constructor() payable {
        owner = msg.sender;
    }

    receive() external payable whenActive {
        emit Deposit(msg.sender, msg.value);
    }

    function withdraw() external onlyOwner whenActive {
        uint256 balance = address(this).balance;
        require(balance > 0, "No funds available");

        (bool success, ) = owner.call{value: balance}("");
        require(success, "Transfer failed");

        emit Withdrawal(owner, balance);
    }

    function deactivate() external onlyOwner {
        isActive = false;
        emit ContractDeactivated(block.timestamp);
    }

    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }
}
