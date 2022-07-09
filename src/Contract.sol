// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Contract {
    function setBoolean(
        uint256 _packedBools,
        uint256 _boolNumber,
        bool _value
    ) public view returns(uint256) {
        if (_value)
            return _packedBools | uint256(1) << _boolNumber;
        else
            return _packedBools & ~(uint256(1) << _boolNumber);
    }

    function getBoolean(uint256 _packedBools, uint256 _boolNumber)
        public view returns(bool)
    {
        uint256 flag = (_packedBools >> _boolNumber) & uint256(1);
        return (flag == 1 ? true : false);
    }
}
