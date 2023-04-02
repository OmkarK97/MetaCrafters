// SPDX-License-Identifier: SEE LICENSE IN LICENSE

pragma solidity >=0.8.2 <0.9.0;

contract Array {
    uint[] public nums = [1,2,3];
    uint[4] public numsFixed = [4,5,6];

    function examples() external {
        nums.push(4);
    }
}