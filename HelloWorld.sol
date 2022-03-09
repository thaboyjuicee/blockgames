// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract HelloWorld{
    string public greet;
    string public name;

    constructor(string memory initialGreet){
        initialGreet = "Hello World";
        greet = initialGreet;
    }
    function setName(string memory newName) public {
        name = newName;      
    }

    function getGreeting() public view returns (string memory){
        return string(abi.encodePacked(greet,", i am " ,name));
    }

}
