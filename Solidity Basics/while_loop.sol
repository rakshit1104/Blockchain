pragma solidity >=0.5.0 < 0.9.0;

contract abcd{

    uint[5] public array;
    uint public count;

    function loop() public{

        while(count<array.length){
            array[count] = count;
            count++;
        }
    }
}
