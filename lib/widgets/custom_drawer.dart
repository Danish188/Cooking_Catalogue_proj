import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.cyan,
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          const DrawerHeader(
            padding: EdgeInsets.all(0),
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.all(0),
              accountName: Text(
                "Danish",
                style: TextStyle(color: Colors.white),
              ),
              accountEmail: Text(
                "danishelahi016@gmail.com",
                style: TextStyle(color: Colors.white),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/login_img.png"),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
            ),
            title: Text(
              "Profile",
            ),
            textColor: Colors.white,
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            title: Text(
              "Home",
            ),
            textColor: Colors.white,
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.tray,
              color: Colors.white,
            ),
            title: Text(
              "My Recipes",
            ),
            textColor: Colors.white,
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.settings,
              color: Colors.white,
            ),
            title: Text(
              "Settings",
            ),
            textColor: Colors.white,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
