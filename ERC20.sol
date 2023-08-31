// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract CustomToken is ERC20, Ownable {
    // Constructor to initialize the token with the name "DARKO Token" and symbol "DRKO" 
    // Initializing total supply with decimal places
    constructor(string memory, string memory) ERC20("DARKO", "DRKO") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }

    // Function to mint new tokens (only the owner can do this)
    function mint(address to, uint256 amount) public onlyOwner {
        require(to != address(0), "Add address to which tokens are to be minted");
        _mint(to, amount);
    }

    // Function to burn tokens (anyone can do this)
    function burn(uint256 amount) public {
        require(balanceOf(msg.sender) >= amount, "Balance of the address is less than the amount");
        
        _burn(msg.sender, amount);
    }

    // Function to transfer tokens from ownwer address to another address
    function transferTokens(address to, uint256 amount) public {
        require(to != address(0), "Add address to which tokens are to be transfered");
        require(balanceOf(msg.sender) >= amount, "Balance of the address is less than the amount");
        
        _transfer(msg.sender, to, amount);
    }
}