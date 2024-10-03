import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Container Demo",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.red,
                ),
              ],
            ),
          )),
    );
  }
}
