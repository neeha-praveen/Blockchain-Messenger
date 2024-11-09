// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract blockchainMessenger {
        address public owner;
        string public message;
        uint public changeCounter;

        constructor() {
            owner = msg.sender;
        }

        function updateMessage(string memory _newMessage) public{
            if(msg.sender == owner){
                changeCounter++;
                message = _newMessage;
            }
        }
}