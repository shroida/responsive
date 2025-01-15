// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:responsive/desktop%20layout/desktop_layout.dart';

import 'package:responsive/mobile%20Layout/mobile_view.dart';
import 'package:responsive/tablet%20layout/tab_view.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: AdaptiveLayout(
        mobileLayout: MobileView(),
        tabletLayout: TabView(),
        desktopLayout: DesktopLayout(),
      ),
    );
  }
}

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });
  final Widget mobileLayout;
  final Widget tabletLayout;
  final Widget desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxHeight < 768) {
        // mobile
        return MobileView();
      } else if (constraints.maxWidth >= 768 && constraints.maxWidth < 1024) {
        //tablet
        return TabView();
      } else {
        return DesktopLayout();
      }
    });
  }
}
