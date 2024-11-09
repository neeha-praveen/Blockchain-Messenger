// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract exampleMsgSender {
    address public someAddress;

    function updateSomeAddress() public {
        someAddress = msg.sender; //msg is an object that exists in all contracts, which has properties, one of which is sender
        //sender is the person interacting with the smart contract
    }
}