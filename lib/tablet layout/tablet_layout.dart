
import 'package:flutter/material.dart';
import 'package:responsive/mobile%20Layout/home_view_body.dart';

class TabLayout extends StatefulWidget {
  const TabLayout({super.key});

  @override
  TabLayoutState createState() => TabLayoutState();
}

class TabLayoutState extends State<TabLayout> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return const HomeViewBody();
  }
}
