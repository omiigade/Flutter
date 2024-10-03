import "package:flutter/material.dart";

void main() {
  runApp(const FlagApp());
}

class FlagApp extends StatelessWidget {
  const FlagApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Indian Flag",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 200,
                    width: 15,
                    color: const Color.fromARGB(255, 50, 13, 13),
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 200,
                          color: Colors.orange,
                        ),
                        Container(
                          height: 50,
                          width: 200,
                          color: Colors.white,
                          child: Image.network(
                              "https://cdn.pixabay.com/photo/2023/06/23/17/47/ashok-chakra-8083914_1280.png"),
                        ),
                        Container(
                          height: 50,
                          width: 200,
                          color: Colors.green,
                        )
                      ]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
