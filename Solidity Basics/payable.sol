pragma solidity >=0.5.0 < 0.9.0;

contract pay{

    function sendEtherContract() public payable{
        // This function will send Ethers to the contract
    }

    function sendEtherAccount(address payable receiver) public payable{
        receiver.transfer(msg.value);
        // This function will send Ethers to the Account
    }

    address payable user = payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);

    function payEther() public payable{

    }

    function getBalance() public view returns(uint){

        return address(this).balance;
    }

    function sendEther() public{

        user.transfer(1 ether);
    }
}
