import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const TextStyle fontSize = TextStyle(fontSize: 30);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 103, 131, 206),
      appBar: AppBar(title: const Text("Home Screen"), elevation: 1),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                "titulo 1",
                style: fontSize,
              ),
              Text(
                "titulo 2",
                style: fontSize,
              )
            ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.cake_rounded,
            size: 40.0, color: Color.fromARGB(255, 221, 195, 44)),
        // ignore: avoid_print
        onPressed: () => print(""),
      ),
    );
  }
}
