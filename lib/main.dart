import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/counter_home_screen.dart';

//import 'package:flutter_application_1/screen/home_screen.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: HomeScreen(),
      home: CounterScreen(),
    );
  }
}
