// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract exampleViewandPure {
    uint public myStorageVariable;

    function getmyStorageVar() public view returns(uint){ //can access storage variables, that are outside of scope
        return myStorageVariable; //read function
    }

    function getAddition(uint a, uint b) public pure returns(uint){ //cannot access storage variables, or other functions
        return a+b; //read function
    }

    function setStorageVariable(uint _newVariable) public /*returns(uint) */ {
        myStorageVariable = _newVariable;
        /*return _newVariable;*/
    }
}