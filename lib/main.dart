import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'courses_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Dashboard(),
        '/courses': (context) => CoursesPage(),
      },
    );
  }
}
