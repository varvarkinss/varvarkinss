pragma solidity ^0.4.2;

contract University {
    string public studentName;

    function Universit () public {
        studentName = "student 1";
    }

    function setCandidate (string _name) public {
        studentName = _name;
    }
} 
