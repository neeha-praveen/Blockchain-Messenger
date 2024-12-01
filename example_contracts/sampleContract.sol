// SPDX-License-Identifier: MIT
pragma solidity 0.8.27;

contract sampleContract {
    string public myString = "Hello World";

    //function updateString(string memory _newString) public{
     //   myString=_newString;
    //}

    function updateString(string memory _newString) public payable {
        if(msg.value== 1 ether){
            myString =_newString;
        }
        else{
            payable(msg.sender).transfer(msg.value);
        }
    }
}