# Error Handling 

This solidity program demonstrates a simple bank account system. It allows users to add or remove funds from their accounts and check their balances. Each operation is tied to the user's Ethereum address, ensuring that each user can only manipulate their account balance. The contract also includes functions demonstrating comprehensive error handling techniques.

## Features
1. #### Deposit Function:
    Allows users to deposit a specified amount of Ether into their account.
2. #### Withdraw Function:
    Enables users to withdraw a specified amount of Ether from their account.
3. #### Check Balance Function:
    Allows users to check their current balance.
4. #### Safe Divide Function:
    It provides a safe way to divide two numbers, ensuring that division by zero is handled properly.
5. #### Error Handling:
    Utilizes require, assert, and revert statements to ensure secure and reliable operations.

## Error Handling Techniques
#### 1. Require Statement:
Ensures preconditions are met before executing a function, such as non-zero deposit amounts and sufficient balance for withdrawals.
#### 2. Assert Statement: 
Validates internal conditions, ensuring the contract's state remains consistent and correct after operations.
#### 3. Revert Statement:
Gracefully handles exceptional cases, such as division by zero, by halting the operation and reverting any changes.

## Executing Program
To execute the smart contract use the following steps:
#### 1. Use REMIX IDE
 open https://remix.etherum.org/
#### 2. Copy and Paste Code:
Copy the Solidity code into the Remix IDE.
#### 3. Compile the Code:
Press Ctrl+S to compile the code.
#### 4. Deploy the Contract:
Deploy the contract using Remix.

   
