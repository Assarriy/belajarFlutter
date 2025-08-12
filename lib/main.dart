import 'package:flutter/material.dart';
import 'pages/bab3/profile_card.dart';
// import halaman bab4 jika sudah ada
// import 'pages/bab4/halaman_bab4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        'bab3': (context) => const ProfileCard(),
        // sementara bab4 diarahkan ke Scaffold kosong
        'bab4': (context) => Scaffold(
              appBar: AppBar(title: const Text("Bab 4")),
              body: const Center(child: Text("Halaman Bab 4 belum dibuat")),
            ),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'bab3');
              },
              child: const Text("Buka Bab 3"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'bab4');
              },
              child: const Text("Buka Bab 4"),
            ),
          ],
        ),
      ),
    );
  }
}
