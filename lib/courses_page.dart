import 'package:flutter/material.dart';

class CoursesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Courses'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20), // Add some spacing

              // Course 1
              CourseButton(
                courseName: 'Data Science Fundamentals',
                imagePath: 'images/ds.jpg',
                backgroundColor: Colors.blueGrey.shade50,
                progress: 80,
              ),

              SizedBox(height: 20), // Add some spacing

              // Course 2
              CourseButton(
                courseName: 'IBM Data Analyst',
                imagePath: 'images/IBM.jpg',
                backgroundColor: Colors.blueGrey.shade50,
                progress: 65,
              ),

              SizedBox(height: 20), // Add some spacing

              // Course 3
              CourseButton(
                courseName: 'Graphic Designing',
                imagePath: 'images/uiux.jpeg',
                backgroundColor: Colors.blueGrey.shade50,
                progress: 90,
              ),

              SizedBox(height: 20), // Add some spacing

              // Course 4
              CourseButton(
                courseName: 'Google UI/UX Basics',
                imagePath: 'images/im.png',
                backgroundColor: Colors.blueGrey.shade50,
                progress: 75,
              ),

              SizedBox(height: 20), // Add some spacing
            ],
          ),
        ),
      ),
    );
  }
}

class CourseButton extends StatelessWidget {
  final String courseName;
  final String imagePath;
  final Color backgroundColor;
  final int progress;

  CourseButton({
    required this.courseName,
    required this.imagePath,
    required this.backgroundColor,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: backgroundColor, // Background color
          borderRadius: BorderRadius.circular(12.0), // Rounded corners
        ),
        child: Column(
          children: [
            Container(
              width: 100, // Adjust the width as needed
              child: Image.asset(
                imagePath,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 8.0), // Add spacing
            Text(
              courseName,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Text color
              ),
            ),
            SizedBox(height: 8.0), // Add spacing

            // Progress bar
            LinearProgressIndicator(
              value: progress / 100, // Convert progress to a value between 0 and 1
              backgroundColor: Colors.white, // Background color of the progress bar
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue), // Progress color
            ),
            SizedBox(height: 8.0), // Add spacing

            Text(
              '$progress% Progress',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black, // Text color
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CoursesPage(),
  ));
}
