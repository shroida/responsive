import 'package:flutter/material.dart';
import 'package:responsive/mobile%20Layout/custom_sliver_grid.dart';
import 'package:responsive/mobile%20Layout/custom_sliver_list.dart';

class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        CustomSliverGrid(
          numberOfRows: 2,
        ),
        CustomSliverList()
      ],
    );
  }
}
