pragma solidity ^0.8.0;

library Addition{
    function addition(uint a, uint b) public pure returns(uint){
        return a+b;
    }
}

contract Calculator{

    function add(uint a, uint b) public pure returns(uint){
        Addition.addition(a, b);
    }
}
