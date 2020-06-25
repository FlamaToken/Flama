pragma solidity ^0.6.0;

contract Swap {
     
     Flama public newflama;
     Flama public oldflama;
     
     constructor (address oldtoken, address newtoken) public {
         
         newflama = Flama(newtoken);
         oldflama = Flama(oldtoken);
         
     }
 
 function swap(uint256 amount) public virtual {
        
        address holder = msg.sender;
        oldflama.burn(holder, amount);
        newflama.mint(holder, amount);
        
    }
 }
