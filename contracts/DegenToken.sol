// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, ERC20Burnable, Ownable {
    string public rules;
    string public in_gameStore;
    constructor() ERC20("Degen", "DGN") {
        rules="1. The player should be above 18 years of age 2. The player can mint, burn, transfer and self destruct 3. Follow the other 2 rules :)";
        in_gameStore="1. Official Degen Cap 2. Official Degen Pencil 3. Official Degen Rollerblades";
    }

    function mint(address to_address, uint256 amt) public onlyOwner {
        _mint(to_address, amt);
        
    }
    function redeem(uint amount)public {
        assert(balanceOf(msg.sender)!=0 && amount<4);
        require(balanceOf(msg.sender)>500, "There should be minimum of 500 tokens to redeem any item from our store");
        _burn(msg.sender, amount**3);
    }

    function selfdestruct() public{
        require(balanceOf(msg.sender)>0, "There should be some tokens to self destruct ");
        _burn(msg.sender, balanceOf(msg.sender));
       
    }
}
