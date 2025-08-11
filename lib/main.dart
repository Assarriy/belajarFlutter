import 'package:flutter/material.dart';
// Import file lainnya
import 'pages/bab3/stateful.dart';
import 'pages/bab4/materi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'bab4',
      routes: {
        'bab3': (context) => Stateful(),
        'bab4': (context) => Button(),
      },
    );
  }
}