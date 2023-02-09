pragma solidity >=0.5.0 < 0.9.0;

contract checking{

    function check(int a) public pure returns(string memory){

        string memory value;
        if(a>0){
            value = "greater than 0";
        } else if(a<0){
            value = "less than 0";
        } else{
            value = "It's a perfect 0!";
        }

        return value;
    }
}
