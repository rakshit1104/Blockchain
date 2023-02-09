pragma solidity ^0.8.0;


contract eventItIs{

    event Transfer(address from, address to, uint amount);

    function transferEther(address payable _receiver) public payable{
        _receiver.transfer(msg.value);
        emit Transfer(msg.sender, _receiver, msg.value);
    }
}
