// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract exampleConstructor {
    address public myAddress;

    constructor(address _someAddress) {
        //constructor is directly called during deployment and only once
        myAddress = _someAddress;
    }

    function setAddress(address _myAddress) public {
        myAddress = _myAddress;
    }

    function setAddresstoMsgSender() public {
        myAddress = msg.sender;
    }
}