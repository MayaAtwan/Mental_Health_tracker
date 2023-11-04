import 'package:flutter/material.dart';

class DrawerBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("User1"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person),
              ),
              accountEmail: null,
            ),
            ListTile(
              title: Text("Log-Out"),
              onTap: () {
                // Handle the tap action for Item 1.
              },
            ),
          ],
        ),
      ),
    );
  }
}
