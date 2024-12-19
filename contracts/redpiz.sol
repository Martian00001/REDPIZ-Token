// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract SimpleToken is ERC20, ERC20Burnable, Ownable {
    constructor() ERC20("First Mars Pizzeria", "REDPIZ") Ownable(msg.sender) {
        // Define the number of decimals the token uses
        uint256 _decimals = 5;
        
        // Mint an initial supply of 140 million tokens with 5 decimal places
        _mint(msg.sender, 140000000 * 10**_decimals);
    }
    // Override the decimals function to set custom decimal places
    function decimals() public pure override returns (uint8) {
        return 5;
    }
// Public mint function restricted to owner
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // Public burn function restricted to owner, with override because it's overriding ERC20Burnable's burn function
    function burn(uint256 amount) public onlyOwner override {
        _burn(msg.sender, amount);
    }

}
