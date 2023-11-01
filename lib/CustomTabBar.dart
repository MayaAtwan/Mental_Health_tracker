import "package:flutter/material.dart";
import 'package:flutter/services.dart';

void main() {
  runApp(gfgApp()); //MaterialApp
}

MaterialApp gfgApp() {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF5B8BDF),
        elevation: 50.0,
        title: const Text("peace path"),
        centerTitle: true, // Center the title text
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Menu Icon',
          onPressed: () {},
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40.0), // Adjust the height as needed
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    // Handle the first button's onPressed event
                  },
                  child: const Text(
                    'Tasks',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Handle the second button's onPressed event
                  },
                  child: const Text(
                    'Dashboard',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ), //AppBar
    ), //Scaffold
    debugShowCheckedModeBanner: false, //Removing Debug Banner
  );
}
