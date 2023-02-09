pragma solidity ^0.8.0;

abstract contract Book{

    uint length;
    uint breadth;
    uint height;

    function setDimensions(uint _length, uint _breadth, uint _height) public{

        length = _length;
        breadth = _breadth;
        height = _height;
    }

    function getDimenions() view public returns(uint, uint, uint){
        return(length, breadth, height);
    }

    function add(uint a, uint b) public virtual returns(uint){

    }
}

contract Book2 is Book{

    function add(uint a, uint b) public pure override returns(uint){
        uint c = a +b;
        return c;
    }
}