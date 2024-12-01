// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract sampleFallback {
    uint public lastValueSent;
    string public lastFunctionCalled;
    uint public myUint;

    function setUint(uint _newUint) public {
        myUint =_newUint;
    }

    receive() external payable {
        lastValueSent = msg.value;
        lastFunctionCalled = "receive";
    }

    fallback() external payable {
        lastValueSent= msg.value;
        lastFunctionCalled = "fallback";
    }
}