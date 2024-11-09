// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract exampleBoolean {
    bool public myBool;

    function setBool (bool _myBool) public {
        myBool = _myBool;
    }
}