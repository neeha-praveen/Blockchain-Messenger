// SPDX-License-Identifier: MIT
pragma solidity 0.8.26; //with the latest compile version, it can be done using unchecked

contract exampleWrapAround2{
    uint256 public myUint; //0 to (2^256) -1

    function decrementUint() public {
        unchecked {  
            myUint--;
        }
    }
}