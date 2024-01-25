//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;



contract MyFirstContract {
    // string public hey = "Hello Inspiration";
    // uint256 public lucky_number = 7;

    string public hey;
    uint256 public lucky_number;

    // constructor (string memory _hey, uint256 _lucky_number){
    //     hey = _hey;
    //     lucky_number = _lucky_number;
    // }

    function updateHey(string memory _hey) public {
        hey = _hey;
    }
}

contract NFTCount {
    uint256 numberOfNFT;

    function checkNFTCount() public view returns (uint256) {
        return numberOfNFT;
    }

    function increaseNFT() public {
        numberOfNFT += 1;
    }

    function decreaseNFT() public {
        require(numberOfNFT > 0, "NFT balance is 0");
        numberOfNFT -= 1;
    }
}

contract BusyDay {
    uint8 days_of_week;
    uint8 months_of_year;

    constructor(uint8 _days_of_the_week, uint8 _months_of_year) {
        days_of_week = _days_of_the_week;
        months_of_year = _months_of_year;
    }

    function adjustNumberOfWeeks(uint8 newDays) public {
        days_of_week = newDays;
    }

    function adjusNumberOfMonths(uint8 newMonths) public {
        months_of_year = newMonths;
    }

    function viewDays() public view returns (uint8) {
        return days_of_week;
    }

    function viewMonths() public view returns (uint8) {
        return months_of_year;
    }

    function increaseDaysOfWeek() public {
        days_of_week += 1;
    }

    function increaseMonthsOfYear() public {
        months_of_year += 1;
    }

    function decreaseDaysOfWeek() public {
        days_of_week -= 1;
    }

    function decreaseMonthOfYear() public {
        months_of_year -= 1;
    }

    function clearMonths() public {
        months_of_year = 0;
    }

    function clearDays() public {
        days_of_week = 0;
    }

    function sayHello(string memory _name) public pure  returns (string memory) {
        return string.concat("Hello ", _name);
    }

    function greet() public pure  returns(string memory) {
        return "Hello";
    }
}
