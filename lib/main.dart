import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive/mobile%20Layout/mobile_layout.dart';
import 'package:responsive/tablet%20layout/tablet_layout.dart';

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
    return LayoutBuilder(builder: (context, constraints) {
      log('MaxWidth: ${constraints.maxWidth}');

      if (constraints.maxWidth < 768) {
        // Mobile layout
        return const MobileLayout();
      } else if (constraints.maxWidth >= 768 && constraints.maxWidth < 1024) {
        // Tablet layout
        return const TabLayout();
      } else {
        // Desktop layout
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
