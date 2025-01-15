import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive/mobile%20Layout/drawer.dart';
import 'package:responsive/mobile%20Layout/home_view_body.dart';

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
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

    var height = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    log(height.toString());
    log('MaxWidth: $screenWidth');

    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      backgroundColor: const Color(0xffDBDBDB),
      appBar: screenWidth < 1087
          ? AppBar(
              backgroundColor: Colors.black,
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: const Icon(Icons.menu),
                color: Colors.white,
              ),
            )
          : null,
      body: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child:DashboardView()
      ),
    );
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
