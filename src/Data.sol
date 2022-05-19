// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.13;

import {Base64} from 'codec/Base64.sol';

library DataURI {
  using Base64 for bytes;

  // according to: https://datatracker.ietf.org/doc/html/rfc2397
  function dataURIBase64(bytes memory text, bytes memory mediaType) internal pure returns (bytes memory) {
    return bytes.concat("data:", mediaType, ";base64,", text.base64());
  }
}
