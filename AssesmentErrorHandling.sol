
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Bank {
    mapping(address => uint256) private balances;
    address public owner;

    constructor() {
        owner = msg.sender; // Set the contract deployer as the owner
    }

    // Function to deposit Ether into the bank
    function deposit(uint256 amount) public {
       
        require(amount > 0, "Deposit amount must be greater than zero");

        balances[msg.sender] += amount;
    }

    // Function to withdraw Ether from the bank
    function withdraw(uint256 amount) public {
        require(amount > 0, "Withdrawal amount must be greater than zero");
        require(balances[msg.sender] >= amount, "Insufficient balance");

        uint256 balanceBefore = balances[msg.sender];
        balances[msg.sender] -= amount;
    
        // Assert to check if balance has been correctly updated
        assert(balances[msg.sender] == balanceBefore - amount);
    }

    // Function to check the balance of the caller
    function checkBalance() public view returns (uint256) {
        return balances[msg.sender];
    }

    // Function to safely divide two numbers
    function safeDivide(uint256 a, uint256 b) public pure returns (uint256) {
        if (b == 0) {
            revert("Cannot divide by zero");
        }
        return a / b;
    }
}
