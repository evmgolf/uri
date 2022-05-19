// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.13;
import "forge-std/Test.sol";
import {DataURI} from "../Data.sol";

contract DataTest is Test {
  using DataURI for bytes;

  function testOutputsSomething(bytes calldata mediaType, bytes calldata text) public {
    assertGt(text.dataURIBase64(mediaType).length, 0);
  }
}
