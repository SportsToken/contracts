// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.8.0;

// Athlete are functionally the same, just differentiated by price / feed

contract AthleteFactory 
{
    struct Athlete {
        string aID;
        string aName;
        uint aPrice;
    }
    event newAthlete(string aID, string name, uint aPrice ); //This is broken -- didn't apply concepts correctly

    Athlete[] public arrAthlete;
    address masterContract;
    // memory - temporary -> use for pricing value
    // storage - permanent -> transactions

    mapping (uint => string) aID;
    mapping (uint => address) public athleteToOwner;
    mapping (address => uint) ownerAthleteCount;

    //Keep track of all the athlete tokens in existence
    function createAthlete(string memory _name, uint _price) external {
        string memory aID = this._generateUniqueSigniature(_price);
        uint key = arrAthlete.push(Athlete( aID, _name, _price)) -1; // Circular dependency...
        emit newAthlete( aID, _name, _price);
    }


    function _generateUniqueSigniature(uint _key) private view returns (string memory Athleteignature) {
        // trace all Athlete tokens back to AE via uniquely signatures
        uint sign = uint(keccak256(abi.encodePacked(_key))); //Very insecure for now!
        return aID[sign];
    }

}