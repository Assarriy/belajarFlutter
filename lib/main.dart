  import 'package:belajar_flutter/pages/bab6/my_gallery_app.dart';
import 'package:flutter/material.dart';
  import 'pages/bab3/profile_card.dart';
  import 'pages/bab4/kalkulator.dart';
  import 'pages/bab5/a_product_catalog_app.dart';
  import 'pages/bab6/my_gallery_app.dart';

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
          'bab4': (context) => const CalculatorApp(),
          'bab5': (context) => const ProductCatalogApp(),
          'bab6': (context) => const Bab6Page(),
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
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'bab5');
                },
                child: const Text("Buka Bab 5"),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'bab6');
                },
                child: const Text("Buka Bab 6"),
              ),
            ],
          ),
        ),
      );
    }
  }
