// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.13;
import "forge-std/Test.sol";
import {EthereumURI} from "../Ethereum.sol";

contract EthereumTest is Test {
  using EthereumURI for address;

  function testOutputsSomething(address a) public {
    assertGt(a.ethereumURI().length, 0);
  }
}
