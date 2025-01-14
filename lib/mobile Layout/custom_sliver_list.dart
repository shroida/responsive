import 'package:flutter/widgets.dart';
import 'package:responsive/mobile%20Layout/custom_item.dart';

class CustomSliverList extends StatelessWidget {
  const CustomSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 15,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: CustomItem(
            color: Color.fromARGB(255, 125, 125, 125),
          ),
        );
      },
    );
  }
}
