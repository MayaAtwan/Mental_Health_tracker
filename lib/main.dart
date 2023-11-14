import 'package:flutter/material.dart';
import 'package:mental_health_tracker/CustomTabBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuestionScreen(),
    );
  }
}

class QuestionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.0), // Adjust the height as needed
        child: CustomAppBar(),
        ),
      body: Center(
        child: QuestionWidget(),
      ),
    );
  }
}

class QuestionWidget extends StatelessWidget {
  final String question;
  final Map<String, dynamic> answerChoices;

  QuestionWidget({
    this.question = 'Ready to answer a few questions?',
    this.answerChoices = const {
      "Yes!": null,
      "Not now": null,
    },
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Card(
          elevation: 5, // Adjust the elevation as needed
          margin: EdgeInsets.all(20), // Adjust the margin as needed
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Text(
                  question,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight:
                        FontWeight.bold, // Make the text bold for a formal look
                  ),
                ),
                SizedBox(height: 20),
                Column(
                  children: answerChoices.keys.map((choice) {
                    return ElevatedButton(
                      onPressed: () {
                        // Handle the choice here, e.g., navigate to the next question or perform an action.
                      },
                      child: Text(choice),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}