import 'package:flutter/material.dart';
import 'package:mental_health_tracker/screens/Tasks.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TasksPage(), // Specify the TasksPage as the home page
    );
  }
}
