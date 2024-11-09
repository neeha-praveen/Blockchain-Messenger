// SPDX-License-Identifier: MIT
pragma solidity 0.7.5; //wrap around was done till 0.8.0

contract exampleWrapAround{
    uint256 public myUint; //0 to (2^256) -1
    
    function decrementUint() public {
        myUint--;
    }
}