import 'package:flutter/material.dart';

class PapersPage extends StatefulWidget {
  @override
  _PapersPageState createState() => _PapersPageState();
}

class _PapersPageState extends State<PapersPage> {
  String? selectedClass;
  String? selectedSubject;
  bool showCards = false; // Flag to control card visibility

  // Define the available classes and subjects
  List<String> classes = ['Class 1', 'Class 2', 'Class 3', 'Class 4', 'Class 5', 'Class 6', 'Class 7', 'Class 8', 'Class 9', 'Class 10', 'Class 11', 'Class 12'];
  List<String> subjects = [
    'Mathematics',
    'Science',
    'English',
    'History',
    'Geography',
    'Computer Science',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Papers'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0), // Add spacing

            // Class Dropdown
            DropdownButtonFormField<String>(
              value: selectedClass,
              onChanged: (value) {
                setState(() {
                  selectedClass = value;
                });
              },
              items: classes.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              decoration: InputDecoration(
                labelText: 'Select Class',
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20.0), // Add spacing

            // Subject Dropdown
            DropdownButtonFormField<String>(
              value: selectedSubject,
              onChanged: (value) {
                setState(() {
                  selectedSubject = value;
                });
              },
              items: subjects.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              decoration: InputDecoration(
                labelText: 'Select Subject',
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20.0), // Add spacing

            // Show Button
            ElevatedButton(
              onPressed: () {
                setState(() {
                  showCards = true; // Set the flag to show cards
                });
              },
              child: Text('Show'),
            ),

            SizedBox(height: 20.0), // Add spacing

            // Cards (Conditional)
            if (showCards) ...[
              // First Card
              Card(
                margin: EdgeInsets.symmetric(horizontal: 16.0),
                child: ListTile(
                  title: Text('Sample Paper 1'),
                  subtitle: Text('Class: $selectedClass, Subject: $selectedSubject'),
                ),
              ),

              // Second Card
              Card(
                margin: EdgeInsets.symmetric(horizontal: 16.0),
                child: ListTile(
                  title: Text('Sample Paper 2'),
                  subtitle: Text('Class: $selectedClass, Subject: $selectedSubject'),
                ),
              ),

               Card(
                margin: EdgeInsets.symmetric(horizontal: 16.0),
                child: ListTile(
                  title: Text('Sample Paper 3'),
                  subtitle: Text('Class: $selectedClass, Subject: $selectedSubject'),
                ),
              ),

               Card(
                margin: EdgeInsets.symmetric(horizontal: 16.0),
                child: ListTile(
                  title: Text('Sample Paper 4'),
                  subtitle: Text('Class: $selectedClass, Subject: $selectedSubject'),
                ),
              ),

              // Add more cards as needed
            ],
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PapersPage(),
  ));
}
