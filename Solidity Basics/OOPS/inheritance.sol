pragma solidity ^ 0.8.0;

// Parent Contract
contract Book{

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
}

// Child Contract
contract Book2 is Book{

    bool value;

    function setValue(bool _value) public{
        value = _value;
    }

    function getValue() view public returns(bool){
        return value;
    }
}
