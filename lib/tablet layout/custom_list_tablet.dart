import 'package:flutter/material.dart';
import 'package:responsive/mobile%20Layout/custom_item.dart';

class CustomListTablet extends StatelessWidget {
  const CustomListTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 50,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.all(8.0),
              child: AspectRatio(
                  aspectRatio: 1,
                  child: CustomItem(color: Color.fromARGB(255, 79, 79, 79))),
            );
          },
        ),
      ),
    );
  }
}
