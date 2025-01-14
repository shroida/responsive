import 'package:flutter/material.dart';
import 'package:responsive/mobile%20Layout/custom_item.dart';

class CustomSliverGrid extends StatelessWidget {
  const CustomSliverGrid({super.key, required this.numberOfRows, });
  final int numberOfRows;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          crossAxisCount: numberOfRows),
      itemBuilder: (context, index) {
        return const CustomItem(
          color: Color(0xffb4b4b4),
        );
      },
    );
  }
}
