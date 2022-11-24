// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

contract Debugging {
    uint256[5] arr;

    event Update(uint256 index, uint256 value);

    constructor() {}

    function updateStorageArray(uint256 index, uint256 value) external {
        _updateArr(arr, index, value);
        emit Update(index, arr[index]);
    }

    function _updateArr(uint256[5] memory _arr, uint256 index, uint256 value) internal {
        _arr[index] = value;
    }
}
