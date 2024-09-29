// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract TheBlockchainMessenger {
    uint public changeCounter;
    address public owner;
    string public message;


    constructor() {
        owner = msg.sender;
    }

    function updateTheMessage(string memory _message) public {
        if(msg.sender == owner){
            message = _message;
            changeCounter++;
        }
    }

}