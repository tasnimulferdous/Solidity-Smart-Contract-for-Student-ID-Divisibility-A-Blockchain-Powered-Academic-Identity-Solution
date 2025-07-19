pragma solidity ^0.8.0;

contract StudentRegistry {
    // Enum to define access roles
    enum Role { Student, Teacher }
    Role public userRole;

    // Struct to store student details
    struct Student {
        string name;
    }

    // State variable: Mapping to store student ID to Student struct
    mapping(uint256 => Student) public studentRecords;

    // Constructor to initialize a sample student record
    constructor() {
        // Initialize with a sample student ID and name
        studentRecords[21241104] = Student("Tasnimul Ferdous Tamim");
        userRole = Role.Student; // Default role
    }

    // Function to add a student record
    function addStudent(uint256 _studentID, string memory _name) public {
        studentRecords[_studentID] = Student(_name);
    }

    // Function to get student name by ID
    function getStudentName(uint256 _studentID) public view returns (string memory) {
        if (bytes(studentRecords[_studentID].name).length > 0) {
            return studentRecords[_studentID].name;
        } else {
            return "Student ID not found";
        }
    }
}