// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Primitive {
   bool public boo=true;
   uint8 public u8=1;
   uint128 public u128 =189;
   uint256 public u=156;

   int8 public i8 = -1;
   int256 public i256 = 456;
   int256 public i = -123;

   bytes1 a = 0xb5; //  [10110101]
   bytes1 b = 0x56; //  [01010110]

   bool public defaultBoo; // false
    uint256 public defaultUint; // 0
    int256 public defaultInt; // 0
    address public defaultAddr;// 0x0000000000000000000000000000000000000000

}