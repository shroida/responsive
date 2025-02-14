import 'package:flutter/material.dart';
import 'package:responsive/mobile%20Layout/custom_item.dart';
import 'package:responsive/mobile%20Layout/drawer.dart';
import 'package:responsive/tablet%20layout/tab_view.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDBDBDB),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: const Row(
          children: [
            Expanded(child: CustomDrawer()),
            Expanded(flex: 4, child: TabView()),
            SizedBox(
              width: 15,
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: CustomItem(
                      color: Color.fromARGB(255, 170, 169, 169),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    child: CustomItem(
                      color: Color.fromARGB(255, 42, 42, 42),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
