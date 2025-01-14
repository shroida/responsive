import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Column(
        children: [
          DrawerHeader(child: Icon(FontAwesomeIcons.solidHeart)),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('D A S H B O A R D'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('S E T T I N G S'),
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('A B O U T'),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('L O G O U T'),
          ),
        ],
      ),
    );
  }
}
