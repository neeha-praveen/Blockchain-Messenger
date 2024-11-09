// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract exampleUint{
    uint256 public myUint = 838383; //0 to (2^256) -1
    uint8 public myUint8;
    int public myInt = -100; //-2^128 to +(2^128)-1

    function setUint(uint _myUint) public {
        myUint = _myUint;
    }

    function decrementUnit() public {
        myUint--;
    }

    function incrementUint8() public {
        myUint8++;
    }

    function incrementInt() public {
        myInt++;
    }
}