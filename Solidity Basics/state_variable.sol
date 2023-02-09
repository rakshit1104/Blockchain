pragma solidity >= 0.5.0 < 0.9.0;

contract Identity{

    uint age = 20;
    string name = "Rakshit";

    function getAge() public view returns(uint){

        return age;

    }

    function getName() public view returns(string memory){

        return name;

    }

    function setName() public{

        name = "Hey Rakshit";

    }
}
