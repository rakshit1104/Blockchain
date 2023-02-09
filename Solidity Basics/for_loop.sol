pragma solidity >=0.5.0 < 0.9.0;

contract hi{

    uint[5] public array;
    uint public count;

    function loop() public{

        for(uint i = 0; i<array.length; i++){

            array[count] = count;
            count++;
        }
    }
}
