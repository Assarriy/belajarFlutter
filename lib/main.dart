import 'package:flutter/material.dart';
// Import file lainnya

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
        // 'bab4': (context) => Button(),
      },
    );
  }
}