import 'package:flutter/material.dart';
import 'pages/bab3/profile_card.dart';
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
      initialRoute: 'bab3',
      routes: {
        'bab3': (context) => const ProfileCard(),
      },
    );
  }
}