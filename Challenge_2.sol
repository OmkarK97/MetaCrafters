// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Value {
   uint public etherAmt; 
   uint public weiAmt;
   uint public gweiAmt;

    function receiveEther() external payable {     
        etherAmt = msg.value;
        weiAmt = msg.value;
        gweiAmt = msg.value;
    }
}