import 'package:flutter/material.dart';
import 'package:responsive/mobile%20Layout/custom_sliver_list.dart';
import 'package:responsive/tablet%20layout/custom_list_tablet.dart';

class TabView extends StatelessWidget {
  TabView({super.key}) {
    print('tab layout created');
  }

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [CustomListTablet(), CustomSliverList()],
    );
  }
}
