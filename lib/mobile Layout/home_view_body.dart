import 'package:flutter/material.dart';
import 'package:responsive/mobile%20Layout/custom_sliver_grid.dart';
import 'package:responsive/mobile%20Layout/custom_sliver_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          CustomSliverGrid(),
          CustomSliverList()
          ],
      ),
    );
  }
}
