// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Test} from "forge-std/Test.sol";
import {StdInvariant} from "forge-std/StdInvariant.sol";
import {WETH9} from "../src/WETH9.sol";

contract WETH9Invariants is StdInvariant, Test  {
    WETH9 public weth;

    function setUp() public {
        weth = new WETH9();
    }

    function invariant_wethSupplyIsAlwaysZero() public {
        assertEq(0, weth.totalSupply());
    }
}
