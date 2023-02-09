pragma solidity ^0.8.0;

// Parent Contract
contract Book{

    uint length;
    uint breadth;
    uint height;
    uint a;

    constructor(uint _a){
        a = _a;
    }

    function setDimmension(uint _length, uint _breadth, uint _height) public{
        length = _length;
        breadth = _breadth;
        height = _height;
    }

    function getDimension() public view returns(uint, uint, uint){
        return (length, breadth, height);
    }
}

// Object Creation
contract ObjectContract{

    Book obj = new Book(11);

    function writeDimension() public{
        obj.setDimmension(5, 10, 15);
    }

    function readDimension() public view returns(uint, uint, uint){
        return obj.getDimension();
    }
}
