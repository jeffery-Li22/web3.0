// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Variables {
    // State variables are stored on the blockchain.
    string public text = "Hello";
    uint256 public num = 123;

    function doSomething() public view {
         uint256 imestamp = block.timestamp;
         address sender = msg.sender;
}

}