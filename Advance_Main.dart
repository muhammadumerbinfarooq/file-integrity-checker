// Import necessary libraries
import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'package:crypto/crypto.dart';
import 'package:encrypt/encrypt.dart';
import 'package:logging/logging.dart';

// Define a logger for logging events
Logger _logger = Logger('File Integrity Checker');

// Function to calculate the SHA-256 checksum of a file
String calculateChecksum(String filePath) {
  try {
    // Read the file as bytes
    var bytes = File(filePath).readAsBytesSync();
    // Calculate the SHA-256 checksum
    var digest = sha256.convert(bytes);
    return digest.toString();
  } catch (e) {
    // Log any errors that occur
    _logger.severe('Error calculating checksum: $e');
    return null;
  }
}

// Function to encrypt a file using AES encryption
void encryptFile(String filePath, String encryptionKey) {
  try {
    // Read the file as bytes
    var bytes = File(filePath).readAsBytesSync();
    // Encrypt the bytes using AES encryption
    var encryptedBytes = Encrypter(AES(Key.fromUtf8(encryptionKey))).encrypt(bytes);
    // Write the encrypted bytes to a new file
    File(filePath + '.enc').writeAsBytesSync(encryptedBytes);
  } catch (e) {
    // Log any errors that occur
    _logger.severe('Error encrypting file: $e');
  }
}

// Function to decrypt a file using AES encryption
void decryptFile(String filePath, String encryptionKey) {
  try {
    // Read the encrypted file as bytes
    var encryptedBytes = File(filePath).readAsBytesSync();
    // Decrypt the bytes using AES encryption
    var decryptedBytes = Encrypter(AES(Key.fromUtf8(encryptionKey))).decrypt(encryptedBytes);
    // Write the decrypted bytes to a new file
    File(filePath.substring(0, filePath.length - 4)).writeAsBytesSync(decryptedBytes);
  } catch (e) {
    // Log any errors that occur
    _logger.severe('Error decrypting file: $e');
  }
}

// Function to monitor a file for changes
void monitorFile(String filePath) {
  try {
    // Calculate the initial checksum
    var initialChecksum = calculateChecksum(filePath);
    // Log the initial checksum
    _logger.info('Initial checksum: $initialChecksum');
    // Monitor the file for changes
    while (true) {
      // Calculate the current checksum
      var currentChecksum = calculateChecksum(filePath);
      // Log the current checksum
      _logger.info('Current checksum: $currentChecksum');
      // Check if the checksum has changed
      if (currentChecksum != initialChecksum) {
        // Log a warning message
        _logger.warning('File has been modified!');
      }
      // Sleep for 1 second
      sleep(Duration(seconds: 1));
    }
  } catch (e) {
    // Log any errors that occur
    _logger.severe('Error monitoring file: $e');
  }
}

void main() {
  // Set the logging level
  Logger.root.level = Level.ALL;
  // Set the logging output
  Logger.root.onRecord.listen((record) {
    print('${record.level.name}: ${record.time}: ${record.message}');
  });
  // Define the file path
  var filePath = 'path/to/your/file.txt';
  // Define the encryption key
  var encryptionKey = 'your_encryption_key';
  // Monitor the file for changes
  monitorFile(filePath);
  // Encrypt the file
  encryptFile(filePath, encryptionKey);
  // Decrypt the file
  decryptFile(filePath + '.enc', encryptionKey);
}
