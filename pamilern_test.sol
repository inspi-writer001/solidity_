// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract AnotherTrest {

    uint256 no_days;
    uint256 no_weeks;
    string creator_name;
    address creator_address;

    constructor (string memory _initial_creator_name, address _initial_creator_address, uint256 _initial_no_days, uint256 _initial_no_weeks) {
        no_days = _initial_no_days;
        no_weeks = _initial_no_weeks;
        creator_name = _initial_creator_name;
        creator_address = _initial_creator_address;
    }

    function getNoDays() public view returns(uint256) {
        return no_days;
    }

    function getNoWeeks() public view returns(uint256){
        return no_weeks;
    }

    function updateNoWeeks(uint256 _new_weeks) public  returns(uint256) {
        no_weeks = _new_weeks;
        return no_weeks;
    }

    function updateNoDays(uint256 _new_days) public returns(uint256) {
        no_days = _new_days;
        return no_days;
    }

    function updateCreatorName(string memory _new_creator_name) public  returns(string memory) {
        creator_name = _new_creator_name;
        return creator_name;
    }

    function updateCreatoAddress(address _new_creator_address) public returns(address) {
        creator_address = _new_creator_address;
        return creator_address;
    }

    function sayHello(string memory _user_word)  public pure returns(string memory) {
        return string.concat("Hello ", _user_word);
    }



}