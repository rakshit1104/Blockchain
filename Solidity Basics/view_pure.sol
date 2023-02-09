pragma solidity >= 0.5.0 < 0.9.0;

contract viewpure{
    
    uint pincode = 800013;
    string city = "Patna";

    function getPincode() view public returns(uint){
        return pincode;
    }

    function hello() pure public returns(string memory){

        uint pincode = 800013;
        string memory area = "Patliputra";
        return area;
    }

}
