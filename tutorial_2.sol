// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;


contract Tutorial_2 {
    // range of uints ------> 0 - positive numbers
    // uint8 => 0 -> (2 ** 8 - 1) ----> 255
    // uint256 => 0 -> (2 ** 256 - 1) -----> 1.1579209e+77

    // range of ints --------> negative numbers are allowed
    // int256 => -2 ** 255 -> (2 ** 255 - 1)
    bool public isBig = true;

    int public minInt = type(int).min;

    // Array
    // In Solidity, the datatype byte represents a sequence of bytes, so generally, there are two typesnof bytes...
    // A string is basically a byte also, but when explicitly specified, bytes are more gas efficient compared to string

    // fixed size byte array
    // dynamic size byte array

    bytes1 public a = 0xb5;
    bytes1 public b = 0xce;

    address public heyAddress;



}