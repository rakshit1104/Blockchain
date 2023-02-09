pragma solidity >=0.5.0 < 0.9.0;

contract test{

    function getter() public view returns(uint block_no, uint timestamp, address sender){

        return(block.number, block.timestamp, msg.sender);
    }
}
