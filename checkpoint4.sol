// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title ID Divisibility Checker
/// @notice This contract checks if a student ID is divisible by its last two digits and returns the student's name or an error message
contract IDDivisibilityChecker {
    // State variable: Stores the full student ID
    uint256 private studentID = 21241104;
    // State variable: Stores the student's full name
    string private studentName = "Tasnimul Ferdous Tamim";
    // Enum to define access roles
    enum Role { Student, Teacher }
    Role public userRole;

    // Constructor to set default role
    constructor() {
        userRole = Role.Student;
    }

    /// @notice Checks if the full student ID is divisible by the last two digits
    /// @param _lastTwoDigits The last two digits of the student ID
    /// @return The student's name if divisible, otherwise "Not found"
    function checkDivisibility(uint256 _lastTwoDigits) public view returns (string memory) {
        // Local variable: Stores the result of the divisibility check
        bool isDivisible;
        
        // Validate input
        require(_lastTwoDigits != 0, "Last two digits cannot be zero");

        // Check divisibility using modulo
        if (studentID % _lastTwoDigits == 0) {
            isDivisible = true;
        } else {
            isDivisible = false;
        }

        // Return name if divisible, else "Not found"
        if (isDivisible) {
            return studentName;
        } else {
            return "Not found";
        }
    }
}