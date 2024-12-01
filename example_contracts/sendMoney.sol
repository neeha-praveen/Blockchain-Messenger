// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract sendWithdrawMoney{
    uint public balanceReceived;
    
    function deposit() public payable {
        balanceReceived += msg.value;
    }

    function getBalance() public view returns(uint){
        return address(this).balance;
    }

    function withdrawAll() public {
        address payable to = payable (msg.sender);
        to.transfer(getBalance());
    }

    function withdraw(address payable to) public{
        to.transfer(getBalance());
    } 
}