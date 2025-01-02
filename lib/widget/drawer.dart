import 'package:flutter/material.dart';

class Drawer extends StatelessWidget {
  const Drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        backgroundColor: Colors.white,
        title: null,
      ),
      backgroundColor: Colors.white,
      drawer: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('ADITYA'),
            accountEmail: const Text('aditya@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                    'https://img.lovepik.com/free-png/20211230/lovepik-a-man-who-practices-kung-fu-png-image_401071425_wh860.png'),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
          ),
          ListTile(
            leading: Icon(Icons.search),
            title: Text('Search'),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favorite'),
          ),
          ListTile(
            leading: Icon(Icons.bookmark),
            title: Text('Bookmark'),
          ),
          ListTile(
            leading: Icon(Icons.camera_alt),
            title: Text('Camera'),
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Language'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
          ListTile(
            leading: Icon(Icons.call),
            title: Text('call'),
          ),
          ListTile(
            leading: Icon(Icons.security),
            title: Text('Security'),
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Help'),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
          ),
        ],
      ),
    );
  }
}
