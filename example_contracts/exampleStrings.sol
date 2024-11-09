// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract exampleStrings{
    string public myString = "hello world";
    bytes public myBytes = "hello world";

    function setstring (string memory _myString) public {
        myString =_myString;
    }

    function compareTwo (string memory _myString) public view returns(bool) {
        return keccak256(abi.encodePacked(myString))==keccak256(abi.encodePacked(_myString));
        //keccak256 makes unique hash of 256 length, needs single byte form
        //abi.encodePacked encodes data into package form (single byte form with is tightly packed)
    }
}