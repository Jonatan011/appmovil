import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void incrase() {
    counter++;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  void reset() {
    counter = 0;
    setState(() {});
  }

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
            children: [
              const Text(
                "Contador",
                style: fontSize,
              ),
              Text(
                "$counter",
                style: fontSize,
              )
            ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: WidgetFloatingActionButton(
        increaseFn: incrase,
        decrease: decrease,
        reset: reset,
      ),
    );
  }
}

class WidgetFloatingActionButton extends StatelessWidget {
  final Function increaseFn;
  final Function decrease;
  final Function reset;

  const WidgetFloatingActionButton({
    Key? key,
    required this.increaseFn,
    required this.decrease,
    required this.reset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: () => increaseFn(),
          child: const Icon(Icons.exposure_plus_1,
              size: 40.0, color: Color.fromARGB(255, 221, 195, 44)),
        ),
        FloatingActionButton(
          onPressed: () => reset(),
          child: const Icon(Icons.restart_alt,
              size: 40.0, color: Color.fromARGB(255, 221, 195, 44)),
        ),
        FloatingActionButton(
          onPressed: () => decrease(),
          child: const Icon(Icons.exposure_minus_1,
              size: 40.0, color: Color.fromARGB(255, 221, 195, 44)),
        ),
      ],
    );
  }
}
