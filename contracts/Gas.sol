// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

contract Debugging {
    mapping(uint256 => uint256) map;

    constructor() {
        for(uint256 i = 0; i < 20; i++) {
            map[i] = 1;
        }
    }

    function eatGas() external {
        testSet1();
        testClear10();
        testReset10();
        testSet10();
    }

    function testClear10() public {
        for(uint256 i = 0; i < 10; i++) {
            map[i] = 0;
        }
    }

    function testReset10() public {
        for(uint256 i = 0; i < 10; i++) {
            map[10+i] = 2;
        }
    }

    function testSet10() public {
        for(uint256 i = 0; i < 10; i++) {
            map[20+i] = 1;
        }
    }

    function testSet1() public {
        for(uint256 i = 0; i < 10; i++) {
            map[30] = i;
        }
    }
}
