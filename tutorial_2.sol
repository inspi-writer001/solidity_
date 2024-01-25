// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract Tutorial_2 {
    // range of uints ------> 0 - positive numbers
    // uint8 => 0 -> (2 ** 8 - 1) ----> 255
    // uint256 => 0 -> (2 ** 256 - 1) -----> 1.1579209e+77

    // range of ints --------> negative numbers are allowed
    // int256 => -2 ** 255 -> (2 ** 255 - 1)
    bool public isBig = true;

    int minInt = type(int).min;
    uint8 days_;
    uint months_;
    string what_day_;
    bytes1 myByte;
    string this_month_;

    constructor(uint8 _days_, uint8 _months_, string memory _what_day_) {
        days_ = _days_;
        months_ = _months_;
        what_day_ = _what_day_;
        myByte = 0xce;
    }

    // Array
    // In Solidity, the datatype byte represents a sequence of bytes, so generally, there are two typesnof bytes...
    // A string is basically a byte also, but when explicitly specified, bytes are more gas efficient compared to string

    // fixed size byte array
    // dynamic size byte array

    // bytes1 public a = 0xb5;
    // bytes1 public b = 0xce;

    // address public heyAddress;

    function getBoolState() public view returns (bool) {
        return isBig;
    }

    function alterBoolState() public {
        isBig = !isBig;
    }

    function getDay() public view returns (uint8) {
        return days_;
    }

    function getWhatByte() public view returns (bytes1) {
        return myByte;
    }

    function getWhatDay() public view returns (string memory) {
        return what_day_;
    }

    function setWhatDay(string memory __today) public {
        what_day_ = __today;
    }

    function setDays(uint8 __days) public {
        days_ = __days;
    }

    function setMonths(uint8 __months) public {
        months_ = __months;
    }

    function setWhatMonth(string memory __thisMonth) public {
        this_month_ = __thisMonth;
    }

    function getWhatMonth() public view returns (string memory) {
        return this_month_;
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Onemore {
    uint256 public dayss;
    string public month;
    uint256 public weekss;
    uint256 public year;

    constructor(
        uint256 _dayss,
        uint256 _year,
        string memory _month,
        uint256 _weekss
    ) {
        dayss = _dayss;
        month = _month;
        weekss = _weekss;
        year = _year;
    }

    function resetAll() public {
        dayss = 0;
        month = "";
        weekss = 0;
        year = 0;
    }

    function increaseWeek() public returns (uint256) {
        uint256 newWeek = weekss++;
        return newWeek;
    }

    function changeMonth(string memory newMonth) public {
        month = newMonth;
    }

    function getweeks() public view returns (uint256) {
        return weekss;
    }

    function getMonth() public view returns (string memory) {
        return month;
    }
}


