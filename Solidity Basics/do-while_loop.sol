pragma solidity >=0.5.0 < 0.9.0;

contract hello{

    uint[5] public array;
    uint public count;

    function loop() public{

        do{
            array[count] = count;
            count++;
        }while(count<array.length);
    }
}
