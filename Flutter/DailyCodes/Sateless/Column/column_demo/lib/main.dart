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
              "Column Demo",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
            ),
            centerTitle: true,
            backgroundColor: Colors.blue),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              // child: const Text("Flutter"),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.orange,
              // child: const Text("Java"),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.amber,
              //  child: const Text("Core2web"),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
              //  child: const Text("Omkar"),
            ),
          ],
        )),
      ),
    );
  }
}
