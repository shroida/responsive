import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomDrawer extends StatelessWidget {
const CustomDrawer({ super.key });

  @override
  Widget build(BuildContext context){
    return const Drawer(
      child: Column(
        children: [
          DrawerHeader(child: Icon(FontAwesomeIcons.solidHeart))
        ],
      ),
    );
  }
}