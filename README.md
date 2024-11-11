# File Integrity Checker

This is a Dart application to verify file integrity by calculating and comparing SHA-256 checksums. It helps ensure files have not been tampered with or corrupted, making it ideal for anyone needing reliable file integrity verification.

## Description

The File Integrity Checker is an interactive Dart application that calculates the SHA-256 checksum of a specified file and compares it to a known checksum. This tool allows users to detect any modifications to files, making it useful for verifying data integrity and learning about hashing and file security.

## Features

- Calculates the SHA-256 checksum of a specified file.
- Compares checksums to detect file modifications.
- Provides a command-line interface that is simple and easy to use.
- A valuable tool for anyone learning about file security and hashing in Dart.

## Requirements

- Dart SDK
- `crypto` package

## Installation

1. **Clone the repository:**
    ```bash
    git clone https://github.com/your-username/file-integrity-checker.git
    ```

2. **Navigate to the project directory:**
    ```bash
    cd file-integrity-checker
    ```

3. **Install dependencies:**
    ```bash
    dart pub get
    ```

## Implementation

The File Integrity Checker is implemented in a single Dart file (`main.dart`). Here’s a brief overview of the main functions:

- `calculateChecksum(String filePath)`: Calculates the SHA-256 checksum of the specified file.
- `compareChecksums(String checksum1, String checksum2)`: Compares two checksums to check for file integrity.

## Usage

1. Replace `'path/to/your/file.txt'` in `main.dart` with the actual path to the file you want to check.
2. Run the application:
   ```bash
   dart run main.dart
