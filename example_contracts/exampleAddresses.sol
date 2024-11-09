// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract exampleAddresses {
    address public someAddress;

    function setAddress (address _someAddress) public{
        someAddress = _someAddress;
    }

    function getAddressBalance() public view returns (uint){
        return someAddress.balance; //in wei 1 eth = 10^18 wei 
                                    //1 gwei = 10^9 wei (used in case of gas)
    }
}