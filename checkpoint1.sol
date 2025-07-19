pragma solidity ^0.8.0;

contract StudentIDChecker {
    // State variable: Mapping to store student ID (uint256) to name
    mapping(uint256 => string) private studentRecords;
    // Enum to define access roles
    enum Role { Student, Teacher }
    Role public userRole;

    // Constructor to initialize the student record
    constructor() {
        // Initialize with your student ID and name
        studentRecords[21241104] = "Tasnimul Ferdous Tamim";
        userRole = Role.Student; // Default role
    }

    // Function to check student ID (integer version)
    function checkStudentID(uint256 _studentID) public view returns (string memory) {
        if (_studentID == 21241104) {
            return studentRecords[_studentID];
        } else {
            return "This is not your ID";
        }
    }

    // Function to check student ID (string version)
    function checkStudentIDString(string memory _studentID) public view returns (string memory) {
        // Convert uint256 to string for comparison
        string memory validID = uint2str(21241104);
        if (keccak256(abi.encodePacked(_studentID)) == keccak256(abi.encodePacked(validID))) {
            return studentRecords[21241104];
        } else {
            return "This is not your ID";
        }
    }

    // Helper function to convert uint256 to string
    function uint2str(uint256 _i) internal pure returns (string memory) {
        if (_i == 0) {
            return "0";
        }
        uint256 temp = _i;
        uint256 digits;
        while (temp != 0) {
            digits++;
            temp /= 10;
        }
        bytes memory buffer = new bytes(digits);
        while (_i != 0) {
            digits--;
            buffer[digits] = bytes1(uint8(48 + (_i % 10)));
            _i /= 10;
        }
        return string(buffer);
    }

    // Function to notify teacher about string comparison result
    function notifyTeacher() public view returns (string memory) {
        return "The string comparison approach works correctly using keccak256 hashing.";
    }
}