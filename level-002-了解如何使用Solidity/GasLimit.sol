// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GasLimit {
    uint256 public i = 0;
    function forever() public  {
        while(true){
            i += 1;
        }
    }
    
}