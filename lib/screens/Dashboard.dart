import 'package:flutter/material.dart';
import '../CustomTabBar.dart';

class DashboardItem extends StatelessWidget {
  final String photoUrl;

  DashboardItem({required this.photoUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(photoUrl, height: 200, width: 200),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('Share'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Dismiss'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(), // Use the custom app bar here as well
      body: ListView(
        children: [
          DashboardItem(photoUrl: 'assets/img1-app.png'),
          DashboardItem(photoUrl: 'assets/img1-app.png'),
          DashboardItem(photoUrl: 'assets/img1-app.png'),
        ],
      ),
    );
  }
}