// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Student Semester Registry
/// @notice This contract stores and retrieves student semester data including GPA, student ID, semester name, and courses taken
contract StudentSemesterRegistry {
    // Struct to store student semester data
    struct SemesterData {
        string gpa;           // GPA as a string (e.g., "3.75")
        uint256 studentID;    // Student ID
        string semesterName;  // Semester name (e.g., "Fall 2025")
        uint256 coursesTaken; // Number of courses taken
    }

    // State variable: Mapping to store student ID to an array of SemesterData
    mapping(uint256 => SemesterData[]) public studentRecords;

    // Event to log when a new semester record is added
    event SemesterDataAdded(uint256 indexed studentID, string semesterName, string gpa, uint256 coursesTaken);

    /// @notice Adds a new semester record for a student
    /// @param _studentID The student's ID
    /// @param _gpa The student's GPA for the semester
    /// @param _semesterName The name of the semester
    /// @param _coursesTaken The number of courses taken
    function addSemesterData(
        uint256 _studentID,
        string memory _gpa,
        string memory _semesterName,
        uint256 _coursesTaken
    ) public {
        // Validate inputs
        require(bytes(_gpa).length > 0, "GPA cannot be empty");
        require(bytes(_semesterName).length > 0, "Semester name cannot be empty");
        require(_coursesTaken > 0, "Courses taken must be greater than zero");

        // Create a new SemesterData struct
        SemesterData memory newRecord = SemesterData({
            gpa: _gpa,
            studentID: _studentID,
            semesterName: _semesterName,
            coursesTaken: _coursesTaken
        });

        // Add to the student's record array
        studentRecords[_studentID].push(newRecord);

        // Emit event for the new record
        emit SemesterDataAdded(_studentID, _semesterName, _gpa, _coursesTaken);
    }

    /// @notice Retrieves all semester data for a given student ID
    /// @param _studentID The student's ID
    /// @return gpas Array of GPAs
    /// @return semesterNames Array of semester names
    /// @return coursesTaken Array of courses taken
    function getAllSemesterData(uint256 _studentID)
        public
        view
        returns (
            string[] memory gpas,
            string[] memory semesterNames,
            uint256[] memory coursesTaken
        )
    {
        // Get the array of semester records for the student
        SemesterData[] memory records = studentRecords[_studentID];
        
        // Initialize return arrays
        gpas = new string[](records.length);
        semesterNames = new string[](records.length);
        coursesTaken = new uint256[](records.length);

        // Loop through records to populate return arrays
        for (uint256 i = 0; i < records.length; i++) {
            gpas[i] = records[i].gpa;
            semesterNames[i] = records[i].semesterName;
            coursesTaken[i] = records[i].coursesTaken;
        }

        // Return arrays (empty if no records)
        return (gpas, semesterNames, coursesTaken);
    }


}