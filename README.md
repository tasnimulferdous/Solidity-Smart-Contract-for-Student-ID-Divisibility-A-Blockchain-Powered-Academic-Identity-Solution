Solidity Smart Contract Suite for Student Data Management: A Blockchain-Powered Academic Solution
Overview
This project is a comprehensive Solidity smart contract suite developed for the CSE-446 Blockchain & Cryptocurrencies course, demonstrating proficiency in Solidity programming and interaction with the Remix IDE. The suite addresses four checkpoints, implementing various Ethereum smart contract functionalities for managing student data, including ID verification, name storage, semester records, and divisibility checks. It showcases key Solidity concepts such as state and local variables, mappings, structs, enums, control structures, and events, making it an ideal resource for learning blockchain development.
Objectives

Master the Solidity programming language for Ethereum smart contract development.
Gain hands-on experience with Remix IDE for writing, testing, and deploying contracts.
Implement a suite of smart contracts addressing academic data management tasks.
Demonstrate expertise in blockchain concepts like EVM, gas, storage, and control structures.

Checkpoints Implemented
The project includes four smart contracts, each addressing a specific checkpoint from the CSE-446 lab:
Checkpoint 1: Student ID Verification

File: StudentIDChecker.sol
Functionality:
Takes a student ID (uint256) and returns the student's name ("Tasnimul Ferdous Tamim") if the ID matches 23241104, otherwise returns "This is not your ID".
Converts the student ID to a string for comparison and notifies the teacher of the approach's success.


Features:
Uses a mapping to store the ID-name pair.
Includes string conversion with keccak256 hashing for comparison.
Employs state variables (mapping), local variables (in string conversion), and an enum for roles.
Notifies teacher via a dedicated function.



Checkpoint 2: Student ID and Name Storage

File: StudentRegistry.sol
Functionality:
Stores student IDs and names using a mapping.
Provides a function to retrieve a student's name by their ID.


Features:
Uses a struct to store name data.
Implements a mapping (uint256 => Student) for persistent storage.
Includes an enum for roles and supports adding new records.



Checkpoint 3: Semester Data Management

File: StudentSemesterRegistry.sol
Functionality:
Stores GPA (string), student ID (uint256), semester name (string), and courses taken (uint256) for each semester.
Provides a function to retrieve all semester data for a student ID.


Features:
Uses a struct for semester data and a mapping to an array of structs.
Implements dynamic arrays for multiple semesters.
Includes input validation and an event for logging additions.



Checkpoint 4: ID Divisibility Check

File: IDDivisibilityChecker.sol
Functionality:
Takes the last two digits of the student ID (04 for 21241104).
Checks if the full ID is divisible by these digits, returning "Tasnimul Ferdous Tamim" if divisible, or "Not found" otherwise.


Features:
Uses state variables for ID and name, and a local variable for divisibility check.
Employs control structures (if-else, require) and an enum for roles.



Contract Details
The project includes four Solidity contracts, each addressing a checkpoint:

Solidity Version: Compatible with ^0.8.0.
Student Data:
ID: 23241104
Name: Tasnimul Ferdous Tamim


Common Features:
State Variables: Used for persistent storage (e.g., mappings, IDs, names).
Local Variables: Used for temporary computations (e.g., divisibility checks, string conversions).
Control Structures: if-else, require, for loops for logic and validation.
Enums: Define roles (Student, Teacher) for extensibility.
Events: Log data additions (e.g., semester records).
NatSpec Comments: Enhance code readability and documentation.



Prerequisites

Basic programming knowledge.
Understanding of blockchain concepts (Ethereum, EVM).
Web browser (Google Chrome or Firefox recommended).
Remix IDE (https://remix.ethereum.org/).

Installation and Testing

Open Remix IDE:

Navigate to https://remix.ethereum.org/.
Create a new file for each contract (e.g., StudentIDChecker.sol, StudentRegistry.sol, etc.) and paste the respective code from the repository.


Compile the Contracts:

In the "Solidity Compiler" tab, select version 0.8.0 or higher.
Compile each .sol file.


Deploy the Contracts:

Go to the "Deploy & Run Transactions" tab.
Select "JavaScript VM" as the environment.
Deploy each contract individually.


Test the Contracts:

Checkpoint 1 (StudentIDChecker.sol):
Call checkStudentID(21241104) → Returns "Tasnimul Ferdous Tamim".
Call checkStudentID(12345678) → Returns "This is not your ID".
Call checkStudentIDString("21241104") → Returns "Tasnimul Ferdous Tamim".
Call notifyTeacher() → Returns "The string comparison approach works correctly using keccak256 hashing."


Checkpoint 2 (StudentRegistry.sol):
Call addStudent(21241104, "Tasnimul Ferdous Tamim") to add a record.
Call getStudentName(21241104) → Returns "Tasnimul Ferdous Tamim".
Call getStudentName(12345678) → Returns "Student ID not found".


Checkpoint 3 (StudentSemesterRegistry.sol):
Call addSemesterData(21241104, "3.75", "Fall 2025", 4).
Call addSemesterData(21241104, "3.90", "Spring 2026", 5).
Call getAllSemesterData(21241104) → Returns arrays: ["3.75", "3.90"], ["Fall 2025", "Spring 2026"], [4, 5].


Checkpoint 4 (IDDivisibilityChecker.sol):
Call checkDivisibility(4) → Returns "Tasnimul Ferdous Tamim".
Call checkDivisibility(5) → Returns "Not found".
Call checkDivisibility(0) → Reverts with "Last two digits cannot be zero".





Project Structure

StudentIDChecker.sol: Implements Checkpoint 1 (ID verification with string conversion).
StudentRegistry.sol: Implements Checkpoint 2 (ID and name storage with mapping).
StudentSemesterRegistry.sol: Implements Checkpoint 3 (semester data management).
IDDivisibilityChecker.sol: Implements Checkpoint 4 (ID divisibility check).
README.md: This file, providing an overview and instructions.

Solidity Concepts Demonstrated

State Variables: Persistent storage for IDs, names, and semester data.
Local Variables: Temporary variables for computations (e.g., divisibility, string conversion).
Mappings: Store key-value pairs for student data.
Structs: Define custom types for student and semester data.
Arrays: Dynamic arrays for multiple semester records.
Control Structures: if-else, for, require for logic and validation.
Enums: Define roles for potential access control.
Events: Log data additions (e.g., semester records).
NatSpec Comments: Document contract functionality.
EVM Interaction: Gas-efficient storage and memory management.

Why This Project?
This project showcases a robust application of Solidity for academic data management on the Ethereum blockchain, demonstrating:

Proficiency in Solidity syntax, data types, and best practices.
Deep understanding of EVM, gas costs, and storage mechanisms.
Application of control structures for robust logic.
Integration with Remix IDE for development, testing, and deployment.
Comprehensive implementation of all four lab checkpoints, covering a range of Solidity features.

Future Enhancements

Add access control (e.g., restrict data retrieval to teachers).
Implement update and delete functions for student records.
Integrate with a front-end DApp for user-friendly interaction.
Expand to support multiple students and dynamic ID inputs.

Resources

Solidity Documentation
Remix IDE Documentation
Web3Schools Solidity Tutorials
TutorialsPoint Solidity

License
This project is licensed under the MIT License. See the contracts' SPDX-License-Identifier for details.


Author
Tasnimul Ferdous Tamim
