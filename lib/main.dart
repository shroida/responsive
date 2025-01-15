import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive/desktop%20layout/desktop_layout.dart';
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
