import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).drawerTheme.backgroundColor ?? const Color(0xffDBDBDB),
      elevation: 0,
      child: Column(
        children: [
          const DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.solidHeart, size: 48),
                SizedBox(height: 10),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'Welcome!',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ],
            ),
          ),
          DrawerItemText(
            icon: Icon(Icons.home, color: Theme.of(context).iconTheme.color),
            text: 'DASHBOARD',
          ),
          DrawerItemText(
            icon: Icon(Icons.settings, color: Theme.of(context).iconTheme.color),
            text: 'SETTINGS',
          ),
          DrawerItemText(
            icon: Icon(Icons.info, color: Theme.of(context).iconTheme.color),
            text: 'ABOUT',
          ),
          DrawerItemText(
            icon: Icon(Icons.logout, color: Theme.of(context).iconTheme.color),
            text: 'LOGOUT',
          ),
        ],
      ),
    );
  }
}

class DrawerItemText extends StatelessWidget {
  const DrawerItemText({
    super.key,
    required this.icon,
    required this.text,
  });

  final Icon icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          style: const TextStyle(fontSize: 20), // Set an initial font size
        ),
      ),
      onTap: () {
        // Implement navigation or functionality here
      },
    );
  }
}
