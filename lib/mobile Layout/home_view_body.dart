import 'package:flutter/material.dart';
import 'package:responsive/mobile%20Layout/custom_sliver_grid.dart';
import 'package:responsive/mobile%20Layout/custom_sliver_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxHeight < 768) {
                // mobile
                return const CustomSliverGrid(numberOfRows: 2,);
              } else if (constraints.maxWidth >= 768 &&
                  constraints.maxWidth < 1024) {
                //tablet
                return const CustomSliverGrid(numberOfRows: 4,);
              } else {
                return const CustomSliverGrid(numberOfRows: 2,);
              }
            }),
          ),
          const CustomSliverList()
        ],
      ),
    );
  }
}
