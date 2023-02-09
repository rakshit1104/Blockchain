pragma solidity >=0.5.0 < 0.9.0;

contract boolean{

    function check(int a) public pure returns(bool){

        bool hehe;

        if(a>0){
            hehe = true;
        } else{
            hehe = false;
        }

        return hehe;
    }
}
