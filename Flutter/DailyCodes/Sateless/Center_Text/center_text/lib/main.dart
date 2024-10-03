import 'package:flutter/material.dart';

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
            "Center Text",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: const Center(
          child: Text(
            "Hello Flutter Programmers",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
