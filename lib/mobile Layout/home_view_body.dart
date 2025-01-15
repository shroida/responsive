import 'package:flutter/material.dart';
import 'package:responsive/mobile%20Layout/mobile_view.dart';
import 'package:responsive/tablet%20layout/tab_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxHeight < 768) {
          // mobile
          return const MobileView();
        } else if (constraints.maxWidth >= 768 && constraints.maxWidth < 1024) {
          //tablet
          return const TabView();
        } else {
          return const MobileView();
        }
      }),
    );
  }
}
 