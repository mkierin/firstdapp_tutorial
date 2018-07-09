pragma solidity 0.4.24;

contract Election {
    //Model a Candidate
    struct Candidate {
	uint id;
	string name;
	uint voteCount;

    }
    //Store Candidates
    //Fetch Candidates
    mapping(uint => Candidate) public candidates;
    //Store Candidates voteCount
    uint public candidatesCount;

    function Election () public {
    	addCandidate("Candidate 1");

    	addCandidate("Candidate 2");

    }
    //name is a localvariable and it is private. No one else add a candidates only contract
    function addCandidate (string _name) private {
//increment operator add candidates. CandidatesCount represents the ID of the candidates
    	candidatesCount ++;
    	//initiate candidate pass it a name and set it a value of zero. Zero votes
    	candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }


    
}

 