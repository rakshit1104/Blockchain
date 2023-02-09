pragma solidity >=0.5.0 < 0.9.0;

contract map{

    mapping (uint => string) public roll_no;

    function setter(uint roll, string memory value) public{

        roll_no[roll] = value;
    }
}
