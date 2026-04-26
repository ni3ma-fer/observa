import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Observa',
      home: Scaffold(
        appBar: AppBar(title: const Text('Observa')),
        body: const Center(child: Text('Application Observa')),
      ),
    );
  }
}
