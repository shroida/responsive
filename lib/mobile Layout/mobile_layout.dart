import 'package:flutter/material.dart';
import 'package:responsive/mobile%20Layout/home_view_body.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({
    super.key,
  });

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  @override
  Widget build(BuildContext context) {
    return const DashboardView();
  }
}
