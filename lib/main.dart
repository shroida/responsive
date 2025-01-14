import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive/mobile%20Layout/mobile_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    log(height.toString());
    return LayoutBuilder(builder: (context, constrains) {
      log(constrains.maxWidth.toString());
      if (constrains.maxWidth < 600) {
        return const MobileLayout();
      } else if (constrains.maxWidth > 600 && constrains.maxWidth < 900) {
        return const TabLayout();
      } else {
        return const DesktopLayout();
      }
    });
  }
}

class ShowDetails extends StatelessWidget {
  const ShowDetails({super.key, required this.numberDetails});
  final int numberDetails;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: const Color.fromARGB(255, 23, 193, 128),
        height: 700,
        width: 700,
        child: Text(numberDetails.toString()),
      ),
    );
  }
}

class TabLayout extends StatefulWidget {
  const TabLayout({super.key});

  @override
  TabLayoutState createState() => TabLayoutState();
}

class TabLayoutState extends State<TabLayout> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
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
                    margin:
                        const EdgeInsets.only(bottom: 15, right: 20, left: 20),
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
    );
  }
}

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Expanded(
            child: Container(
              color: const Color(0xFF124671),
              height: screenHeight * .25,
              width: screenWidth,
            ),
          ),
          IntrinsicHeight(
            child: Row(
              children: [
                Row(
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(top: 15, right: 15, bottom: 15),
                      color: const Color.fromARGB(255, 134, 154, 36),
                      width: screenWidth * .25,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15, bottom: 15),
                      color: const Color.fromARGB(255, 134, 154, 36),
                      width: screenWidth * .25,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          top: 15,
                        ),
                        color: const Color.fromARGB(255, 158, 69, 28),
                        height: screenHeight * 0.37,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 15, bottom: 15),
                        color: const Color.fromARGB(255, 158, 69, 28),
                        height: screenHeight * 0.37,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
