pragma solidity ^0.8.0;

contract poly{

    function test(uint a, uint b) public pure returns(uint){
        return a;
    }

    function test2(uint a, string memory b) public pure returns(string memory){
        return b;
    }
}

// Polymorphism = function with same name but different signatures
