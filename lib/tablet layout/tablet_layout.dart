
import 'package:flutter/material.dart';

class TabLayout extends StatefulWidget {
  const TabLayout({super.key});

  @override
  TabLayoutState createState() => TabLayoutState();
}

class TabLayoutState extends State<TabLayout> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, item) {
                  return GestureDetector(
                    onTap: () {
                      number = item + 1;
                      setState(() {});
                    },
                    child: Container(
                      margin: const EdgeInsets.only(
                          bottom: 15, right: 20, left: 20),
                      color: const Color.fromARGB(255, 64, 106, 254),
                      height: 50,
                      width: 200,
                      child: Text('${item + 1}'),
                    ),
                  );
                }),
          ),
          Expanded(child: Text(number.toString()))
        ],
      ),
    );
  }
}
