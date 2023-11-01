import 'package:flutter/material.dart';

void main() {
  runApp(upperBar());
}

MaterialApp upperBar() {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("PeacePath"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.comment),
            tooltip: 'Comment Icon',
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Setting Icon',
            onPressed: () {},
          ),
        ],
        backgroundColor: const Color(0xFF5B8BDF),
        elevation: 50.0,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Menu Icon',
          onPressed: () {},
        ),
        flexibleSpace: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Row(
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    // Handle the first button press
                  },
                  child: Text("Button 1"), 
                  backgroundColor: const Color(0xFF5B8BDF),
                ),
                TextButton(
                  onPressed: () {
                    // Handle the second button press
                  },
                  child: Text("Button 2"),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}