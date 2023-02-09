pragma solidity >=0.5.0 < 0.9.0;

contract Array{

    bytes3 public b3;
    bytes2 public b2;

    function setter() public{
        b3 = 'abc';
        b2 = 'cd';
    }

}