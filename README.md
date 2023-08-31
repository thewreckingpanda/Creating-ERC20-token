# Custom ERC20 token 

This repository contains a Solidity smart contract for a custom ERC-20 token called "DARKO Token" with the symbol "DRKO". The contract includes functionality for minting new tokens, burning tokens, and transferring tokens between addresses.

## Prerequisites

Before deploying and using the CustomToken smart contract, make sure you have the following:

- Solidity development environment set up.
- Access to the OpenZeppelin library for ERC-20 tokens and access control.

## Features

### Token Information

- *Name*: DARKO Token
- *Symbol*: DRKO

### Constructor

The contract's constructor initializes the token with the specified name and symbol. The total supply of tokens is set to 1,000,000 DRKO tokens, and they are minted to the contract deployer's address.

### Minting Tokens

The contract includes a function `mint(address to, uint256 amount)` which allows the owner to mint new DRKO tokens. This function can be used to increase the token supply.

### Burning Tokens

The contract provides a function `burn(uint256 amount)` which allows anyone to burn their own DRKO tokens. This function reduces the balance of the caller by the specified amount.

### Transferring Tokens

The contract implements a function `transferTokens(address to, uint256 amount)` that allows users to transfer DRKO tokens from their address to another address. The sender must have a sufficient balance to perform the transfer.

### Ownership

The CustomToken contract inherits from the Ownable contract of the OpenZeppelin library. This means that the owner of the contract has special privileges such as minting tokens. The constructor sets the deployer's address as the initial owner.

## Usage

1. Deploy the CustomToken smart contract to an Ethereum-compatible network.
2. Use a tool like Remix or Truffle to interact with the deployed contract.
3. You can use the provided functions to mint, burn, and transfer tokens as needed.

Remember that working with smart contracts involves interacting with real assets. Make sure to thoroughly test and audit your code before deploying it to a production environment.

## Credits
This project is created by ***[Rajat Verma](https://github.com/thewreckingpanda)***.

## License

This code is released under the MIT License. You can find the license text in the source code files.
