// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.13;

import {Hexadecimal} from 'codec/Hexadecimal.sol';

library EthereumURI {
  using Hexadecimal for address;

  // according to: https://eips.ethereum.org/EIPS/eip-831
  function ethereumURI(address a) internal pure returns (bytes memory) {
    return bytes.concat("ethereum:", a.hexadecimal());
  }
}
