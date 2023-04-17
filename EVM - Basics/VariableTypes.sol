// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract MyContract {
    uint256 public myUnit;
    bool public myBool;
    address public myAddress;
    string public myString;

    function setMyUnit(uint256 _myUnit) public {
        myUnit = _myUnit;
        getMyUnit();
    }

    function getMyUnit() public view returns (uint256){
        return myUnit;
    }

    function setBool(bool _myBool) public {
        myBool = _myBool;
        getMyBool();
    }

    function getMyBool() public view returns (bool){
        return myBool;
    }

    function setMyAddress(address _myAddress) public {
        myAddress = _myAddress;
        getMyAddress();
    }

    function getMyAddress() public view returns (address){
        return myAddress;
    }

    function setMyString(string memory _myString) public {
        myString = _myString;
        getMyString();
    }

    function getMyString() public view returns (string memory){
        return myString;
    }
    
}