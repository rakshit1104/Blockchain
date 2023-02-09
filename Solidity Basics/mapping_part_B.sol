pragma solidity >=0.5.0 < 0.9.0;


struct Student{

    string name;
    uint class;
}
contract map{

    mapping(uint => Student) public data;

    function setter(uint _roll, string memory _name, uint _class) public{

        data[_roll] = Student(_name, _class);

    }
}
