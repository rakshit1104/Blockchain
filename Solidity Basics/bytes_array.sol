pragma solidity >=0.5.0 < 0.9.0;

contract Array{

    bytes public b1;

    function pushElement() public{

        b1.push('d');

    }

    function getElement(uint i) public view returns(bytes1){

        return b1[i];
    }

    function getLength() public view returns(uint){

        return b1.length;
    }
}
