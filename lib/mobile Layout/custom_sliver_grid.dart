import 'package:flutter/material.dart';
import 'package:responsive/mobile%20Layout/custom_item.dart';

class CustomSliverGrid extends StatelessWidget {
  const CustomSliverGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 16, mainAxisSpacing: 16, crossAxisCount: 2),
      itemBuilder: (context, index) {
        return const CustomItem(
          color: Color(0xffb4b4b4),
        );
      },
      itemCount: 4,
    );
  }
}
