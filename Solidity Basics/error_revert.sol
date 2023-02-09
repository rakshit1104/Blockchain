pragma solidity ^0.8.0;

contract error{

    error WrongAmount(uint amount, uint value, address caller);

    function balance(uint amount, uint value) public view{
        if(amount<value){
            revert WrongAmount({amount:amount, value:value, caller: msg.sender});
        }
    }
}
