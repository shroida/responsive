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
        mobileLayout: (context) => const MobileView(),
        tabletLayout: (context) => const TabView(),
        desktopLayout: (context) => const DesktopLayout(),
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
  final WidgetBuilder mobileLayout;
  final WidgetBuilder tabletLayout;
  final WidgetBuilder desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 700) {
        // mobile
        return const MobileView();
      } else if (constraints.maxWidth >= 700 && constraints.maxWidth < 1024) {
        //tablet
        return const TabView();
      } else {
        return const DesktopLayout();
      }
    });
  }
}
