pragma solidity >=0.5.0 < 0.9.0;

contract check{

    string[] public arr = ['Rakshit', 'Pandey', 'India'];

    function sto() public{

        string[] storage s1 = arr;
        s1[0] = 'Lucky';
    }

    function mem() public view{

        string[] memory s1 = arr;
        s1[0] = 'Lucky';
    }
}
