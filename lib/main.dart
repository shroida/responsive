import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
    return Scaffold(
        appBar: AppBar(),
        body: LayoutBuilder(builder: (context, constrains) {
          log(constrains.maxWidth.toString());
          if (constrains.maxWidth < 600) {
            return const MobileLayout();
          } else if (constrains.maxWidth > 600 && constrains.maxWidth < 900) {
            return const Text('tablit');
          } else {
            return const Text('desktop');
          }
        }));
  }
}

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, item) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ShowDetails(numberDetails: item + 1)));
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 15, right: 20, left: 20),
              color: Colors.amber,
              height: 50,
              width: 200,
              child: Text('${item + 1}'),
            ),
          );
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
