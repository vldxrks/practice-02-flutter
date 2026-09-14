import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Demo()));
}

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  int count = 0;

  @override
Widget build(BuildContext context) {

  return Scaffold(
    appBar: AppBar(title: const Text('Three Trees')),
      body: Center(
  child: count.isEven
      ? Text(
          'Count: $count',
          style: const TextStyle(fontSize: 30),
        )
      : const Icon(
          Icons.star,
          size: 60,
        ),
),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => count++),
        child: const Icon(Icons.add),
      ),
    );
  }
}