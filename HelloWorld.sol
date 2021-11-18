pragma solidity ^0.6.0;


contract HelloSolidity {
    
    string name= "John Doe";
    
    
    function setName (string memory _name) public {
        name = _name;
    }
    
    function sayHello () public view returns (string memory){
        return string(abi.encodePacked("Hello World! My name is ", name));
    }
    
    
    struct Student {
        string name;
        uint256 score;
    }
    
    Student public firstStudent = Student ({name : "Mike", score: 90});
    
    
    Student[] public students;
    
    function addStudent (string memory _name, uint256 _score) public {
        students.push (Student (_name, _score));
    }
    
    
    mapping (string => uint256) public scoreMap;
    
    function addScore (string memory _name, uint256 _score) public {
        scoreMap[_name] = _score;
    }
    
}

