// SPDX-License-Identifier: SEE LICENSE IN LICENSE

pragma solidity >=0.8.2 <0.9.0;

contract Gas {
    function testGasRefund() public returns(uint) {
        return tx.gasprice; 
    }

    uint public i = 0;
    
    function forever() public {
        while (true) {
            i += 1;
        }
    }
}