// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import  "../src/Contract.sol";

contract ContractTest is Test {
    Contract cntr;
    uint256 booler;
    function setUp() public {
        cntr = new Contract();
    }

    function testExample() public {
        booler = cntr.setBoolean(booler, 89, true);
        assertEq(cntr.getBoolean(booler, 89), true);
    }

    function testDoubleSet() public {
        booler = cntr.setBoolean(booler, 88, true);
        booler = cntr.setBoolean(booler, 89, true);
        assertEq(cntr.getBoolean(booler, 89), true);
        assertEq(cntr.getBoolean(booler, 88), true);
        assertEq(cntr.getBoolean(booler, 87), false);
    }

    function testDelete() public {
        booler = cntr.setBoolean(booler, 88, true);
        assertEq(cntr.getBoolean(booler, 88), true);
        booler = cntr.setBoolean(booler, 88, false);
        assertEq(cntr.getBoolean(booler, 88), false);
    }
}
