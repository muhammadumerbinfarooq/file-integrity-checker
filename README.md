<h1>File Integrity Checker</h1>
<hr><p>This project is a command-line application written in Dart that calculates and compares the SHA-256 checksums of files to verify their integrity. It helps detect if a file has been modified by comparing the initial and new checksums.</p><h2>General Information</h2>
<hr><ul>
<li><strong>General info about your project</strong>:
<ul>
<li>The File Integrity Checker is designed to ensure the integrity of files by calculating and comparing their SHA-256 checksums.</li>
</ul>
</li>
</ul><ul>
<li><strong>What problem does it solve?</strong>:
<ul>
<li>It helps users detect unauthorized or accidental modifications to files, ensuring data integrity and security.</li>
</ul>
</li>
</ul><ul>
<li><strong>Purpose of your project</strong>:
<ul>
<li>The purpose of this project is to provide a simple tool for verifying file integrity, which is crucial for maintaining data security and consistency.</li>
</ul>
</li>
</ul><h2>Technologies Used</h2>
<hr><ul>
<li>Dart</li>
</ul><ul>
<li><code>crypto</code> package</li>
</ul><ul>
<li>Flutter</li>
</ul><h2>Features</h2>
<hr><ul>
<li>Calculate the SHA-256 checksum of a file.</li>
</ul><ul>
<li>Compare checksums to detect file modifications.</li>
</ul><ul>
<li>Simple and easy-to-use command-line interface.</li>
</ul><h2>Setup</h2>
<hr><p><strong>Project requirements/dependencies</strong>:</p>
<ul>
<li>Dart SDK</li>
<li><code>crypto</code> package</li>
</ul><h5>Steps</h5><ul>
<li>Clone the repository:   <code>sh    git clone https://github.com/your-username/file-integrity-checker.git</code></li>
</ul><ul>
<li>Navigate to the project directory:    <code>cd file-integrity-checker   </code></li>
</ul><ul>
<li>Install dependencies: <code>dart pub get</code></li>
</ul><ul>
<li>Replace 'path/to/your/file.txt' in main.dart with the path to the file you want to check.</li>
</ul><ul>
<li>Run the application: <code>dart run main.dart</code></li>
</ul><h2>Usage</h2>
<hr><p>How can one use it?:
Users can use this tool to verify the integrity of any file by calculating and comparing its SHA-256 checksum before and after any changes.</p><h2>Project Status</h2>
<hr><p>In Progress: The project is currently in progress, with plans to add more features and improvements.</p><h2>Improvements</h2>
<hr><ul>
<li>Improvement 1: Add a graphical user interface (GUI) using Flutter.</li>
</ul><ul>
<li>Improvement 2: Implement support for multiple hashing algorithms.</li>
</ul><ul>
<li>Improvement 3: Add functionality to monitor files in real-time for changes.</li>
</ul><h2>Features that can be added</h2>
<hr><ul>
<li>Feature to be added 1: Real-time file monitoring.</li>
</ul><ul>
<li>Feature to be added 2: Email notifications for file changes.</li>
</ul><ul>
<li>Feature to be added 3: Integration with cloud storage services.</li>
</ul><h2>Acknowledgement</h2>
<hr><ul>
<li>This project was inspired by the need for simple file integrity verification tools.</li>
</ul><ul>
<li>This project was based on the tutorial: Dart Command-Line Apps.</li>
</ul><ul>
<li>Many thanks to the Dart community for their support and resources.</li>
</ul>
