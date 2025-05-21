// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HelloWorld {
    // A public state variable initialized to "Hello, World!"
    // Solidity auto-generates a getter for public variables,
    // so you can call `greeting()` to read this.
    string public greeting = "Hello, World!";

    // An explicit function to return the greeting
    function greet() public view returns (string memory) {
        return greeting;
    }

    // If you want to change the message later, you could add:
    // function setGreeting(string calldata _newGreeting) external {
    //     greeting = _newGreeting;
    // }
}
