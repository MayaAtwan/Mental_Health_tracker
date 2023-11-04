import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/DrawerBar.dart';

AppBar customAppBar() {
  return AppBar(
    backgroundColor: const Color(0xFF5B8BDF),
    elevation: 50.0,
    title: const Text("peace path"),
    centerTitle: true,
    leading: IconButton(
      icon: const Icon(Icons.menu),
      tooltip: 'Menu Icon',
      onPressed: () {
        DrawerBar;
      },
    ),
    systemOverlayStyle: SystemUiOverlayStyle.light,
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(40.0),
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
  );
}
