// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract LeftAlone {
    string nameOfCreator;
    address creatorAddress;
    uint256 no_weeks;
    uint256 no_days;

 

    constructor(uint256 __no_days, string memory __name, uint256 __no_weeks){
        no_days = __no_days;
        no_weeks = __no_weeks;
        nameOfCreator = __name;
        creatorAddress = msg.sender;
    }

     function getNumberOfWeeks () view public returns(uint256) {
        return no_weeks;
    }

    function setNumberWeeks(uint256 _new_no_of_weeks) public returns(uint256) {
        no_weeks = _new_no_of_weeks;
        return no_weeks;
    }

    function showCreatorAddress () view public returns(address) {
        return creatorAddress;
    }

    function reset () public {
        no_days = 0; no_weeks = 0;
    }

    function getNumberOfDays() public view returns(uint256) {
        return no_days;
    }

    function setNumberDays (uint256 _new_no_of_days)public returns(uint256) {
        no_days = _new_no_of_days;
        return  no_days;
    }
}