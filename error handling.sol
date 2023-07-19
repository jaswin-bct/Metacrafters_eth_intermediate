// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Eligibility {
    function check(uint256 _percent) public pure returns (string memory) {

        require(_percent >= 0 && _percent <= 100, "Invalid percentage");  
        // validation 
        
        if (_percent < 75) {
            revert("You aren't eligible");  
            // reverts with error messge for condition
        } else {
            assert(_percent >= 75);
              // internal consistency check
                         
            return "Congratulations! You are eligible for the scholarship";
        }

    }
}
