//SPDX-License_Identifier: MIT

pragma solidity ^0.6.0;


contract SimpleStorage {
    
    uint256 public favNum;
    string favString = "naga";
    int256 favInt = -5;
    bool favBool = false;
    
    struct Person{
        string name;
        uint256 favNum;
    }
    
    Person public p1 = Person({name : "Naga", favNum : 19});
    
    Person[] public people;
    
    mapping(string => uint256) public map;
    
    function store (uint _favNum) public {
        favNum = _favNum;
    }
    
    
    function retrive () public view returns (uint256){
        return favNum;
    }
    
    function addPerson (string memory _name, uint _favNumber) public {
        people.push (Person(_name, _favNumber));
        map[_name] = _favNumber; 
    }
    
}