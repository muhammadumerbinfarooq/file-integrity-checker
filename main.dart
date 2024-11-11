import 'dart:convert';
import 'dart:io';
import 'package:crypto/crypto.dart';

String calculateChecksum(String filePath) {
  var file = File(filePath);
  var bytes = file.readAsBytesSync();
  var digest = sha256.convert(bytes);
  return digest.toString();
}

void main() {
  var filePath = 'path/to/your/file.txt';

  // Calculate initial checksum
  var initialChecksum = calculateChecksum(filePath);
  print('Initial Checksum: $initialChecksum');

  // Simulate file modification
  File(filePath).writeAsStringSync('New content added to the file.');

  // Calculate new checksum
  var newChecksum = calculateChecksum(filePath);
  print('New Checksum: $newChecksum');

  // Compare checksums
  if (initialChecksum == newChecksum) {
    print('File integrity is intact.');
  } else {
    print('File has been modified.');
  }
}
