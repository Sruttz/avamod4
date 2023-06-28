// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, ERC20Burnable, Ownable {
    string public shop;
    constructor() ERC20("Degen", "DGN") {
        shop="Items available in the shop are 1. Degen Hoodies 2. Degen Mug 3. Degen Shoes 4. Degen Shirt 5. Degen Candies";
    }

    function mint(address to_address, uint256 amt) public onlyOwner {
        _mint(to_address, amt);
        
    }

    function redeem(uint256 redamt) public{
        if(balanceOf(msg.sender)<0 && redamt>5){
            revert("There are only 5 items in the store , kindly enter a valid number");
        }
        _burn(msg.sender, redamt*100);
       
    }
}