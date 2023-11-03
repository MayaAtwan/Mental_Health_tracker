import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/Tasks.dart';
import 'screens/DashBoard.dart';

 late DashboardPage DashBoardPage;
 late TasksPage Taskspage;

//custom AppBar widget:
class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF5B8BDF),
      elevation: 50.0,
      title: const Text("peace path"),
      centerTitle: true,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(40.0),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                      MaterialPageRoute(builder: (context) => TasksPage()),
                    );
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
                   Navigator.push(
                    context,
                      MaterialPageRoute(builder: (context) => DashboardPage()),
                    );
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
}

//custom DrawerBar widget:
class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}


