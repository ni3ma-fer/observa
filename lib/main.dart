import 'package:flutter/material.dart';
import 'package:observa/parent.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Observa',
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: true,
      ),
      home: const MyApp(), // Appel de l'écran principal défini dans parent.dart
    );
  }
}

