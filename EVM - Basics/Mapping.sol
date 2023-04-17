// SPDX-License-Identifier: SEE LICENSE IN LICENSE

pragma solidity >=0.8.2 <0.9.0;

contract Mapping {
    mapping(address => uint) public balances;
    mapping(address => mapping(address => bool)) public isFriend;

    function examples() external {
        balances[msg.sender] = 123;
        delete balances[msg.sender];
        isFriend[msg.sender][address(this)] = true;
    }

}
