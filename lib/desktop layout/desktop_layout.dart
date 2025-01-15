import 'package:flutter/material.dart';
import 'package:responsive/mobile%20Layout/drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: const Row(
          children: [
            CustomDrawer(),
          ],
        ),
      ),
    );
  }
}
