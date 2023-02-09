pragma solidity ^0.8.0;

interface Book{

    function add(uint a, uint b) external;
    function sub(uint a, uint b) external;
    function mul(uint a, uint b) external;
    function div(uint a, uint b) external;
}

contract Book2 is Book{

    function add(uint a, uint b) external override{

    }

    function sub(uint a, uint b) external override{

    }
    function mul(uint a, uint b) external override{

    }
    function div(uint a, uint b) external override{

    }
}
