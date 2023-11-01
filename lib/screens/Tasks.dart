import 'package:flutter/material.dart';

import '../CustomTabBar.dart';

class TasksItem extends StatelessWidget {
  final String photoUrl;
  final String itemText;

  TasksItem({required this.photoUrl, required this.itemText});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(photoUrl, height: 200, width: 200),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              itemText,
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}

class TasksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: ListView(
        children: [
          TasksItem(
            photoUrl: 'assets/img2.jpg',
            itemText: 'Go out!meet friends',
          ),
          TasksItem(
            photoUrl: 'assets/img2.jpg',
            itemText: 'Go out!meet friends',
          ),
          TasksItem(
            photoUrl: 'assets/img2.jpg',
            itemText: 'Go out!meet friends',
          ),
        ],
      ),
    );
  }
}
