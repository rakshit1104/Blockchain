pragma solidity >= 0.5.0 < 0.9.0;

contract Vote{
    address public electionCommision;
    address public winner;

    struct Voter{
        string name;
        uint age;
        uint voterId;
        string gender;
        uint voteCandidateId;
        address voterAddress;
    }

    struct Candidate{
        string name;
        string party;
        uint age;
        string gender;
        uint candidateId;
        address candidateAddress;
        uint votes;
    }

    uint nextVoterId = 1;
    uint nextCandidateId = 1;
    uint startTime;
    uint endTime;
    mapping(uint=>Voter) voterDetails;
    mapping(uint=>Candidate) candidateDetails;

    bool stopVoting;  //electionCommision

    constructor(){
        electionCommision = msg.sender;
    }

// For Candidate
    function candidateRegister(string calldata _name, string calldata _party,
    uint _age, string calldata _gender) external{

        require(msg.sender != electionCommision,"You are from Election Commision");
        require(candidateVerification(msg.sender),"You are already Registered");
        require(_age>=18, "You're below 18");
        require(nextCandidateId<3,"Registration Full");
        candidateDetails[nextCandidateId] = Candidate(_name, _party, _age, _gender,
        nextCandidateId, msg.sender, 0);
        nextCandidateId++;
    }

    function candidateVerification(address _person) internal view returns(bool){

        for(uint i=1; i<nextCandidateId; i++){
            if(candidateDetails[i].candidateAddress == _person){
                return false;
            }
        }
        return true;
    }

    function candidateList() public view returns(Candidate[] memory){

        Candidate [] memory arr = new Candidate[](nextCandidateId - 1);

        for(uint i=1; i<nextCandidateId; i++){
            arr[i-1] = candidateDetails[i];
        }
        return arr;
    }

// For Voters
    function voterRegister(string calldata _name, uint _age, string calldata _gender) external{

        require(voterVerification(msg.sender),"You are already Registered");
        require(_age>=18, "You're below 18");
        require(nextVoterId<3,"Registration Full");
        voterDetails[nextVoterId] = Voter(_name, _age, nextVoterId, _gender, 0, msg.sender);
        nextVoterId++;
    }

    function voterVerification(address _person) internal view returns(bool){

        for(uint i=1; i<nextVoterId; i++){
            if(voterDetails[i].voterAddress == _person){
                return false;
            }
        }
        return true;
    }

    function voterList() external view returns(Voter[] memory){

        Voter[] memory arr = new Voter[](nextVoterId - 1);

        for(uint i=1; i<nextVoterId; i++){
            arr[i-1] = voterDetails[i];
        }
        return arr;
    }

    function vote(uint _voterId, uint _id) external isVotingOver(){

        require(voterDetails[_voterId].voteCandidateId==0, "You already have voted");
        require(voterDetails[_voterId].voterAddress==msg.sender, "You are not registered");
        require(block.timestamp>startTime, "Voting has not stated");
        require(nextCandidateId>2, "Candidate registration is not done yet");
        require(_id>0 && _id<1, "Candidate does not exist");
        voterDetails[_voterId].voteCandidateId = _id;
        candidateDetails[_id].votes++;
    }

// For Election Commision
    function voteTime(uint _startTime, uint _endTime) external{
        require(electionCommision == msg.sender, "You are not from election Commision");
        startTime = block.timestamp + _startTime;
        endTime = startTime + _endTime;
        stopVoting = false;
    }

    function votingStatus() external view returns(string memory){
        if(startTime == 0){
            return "Voting not started yet!";
        }else if((startTime != 0 && endTime>block.timestamp) && stopVoting == false){
            return "Voting is in progress!";
        }else{
            return "Voting ended!";
        }
    }

    function result() external{
        require(electionCommision == msg.sender, "You are not from election Commision");
        Candidate[] memory arr = new Candidate[](nextCandidateId - 1);
        arr = candidateList();
        if(arr[0].votes>arr[1].votes){
            winner = arr[0].candidateAddress;
        }else{
            winner = arr[1].candidateAddress;
        }
    }

    function emergency() public{
        require(electionCommision == msg.sender, "You are not from Election Commision");
        stopVoting = true;
    }

    modifier isVotingOver(){
        require(endTime>block.timestamp || stopVoting, "Voting is over!");
        _;
    }
}
