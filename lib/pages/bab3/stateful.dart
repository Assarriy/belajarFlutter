import 'package:flutter/material.dart';

class Stateful extends StatefulWidget {
  const Stateful({super.key});

  @override
  State<Stateful> createState() => _StatefulState();
}

class _StatefulState extends State<Stateful> {
  int _kali = 0;

  void _tambah() {
    setState(() {
      _kali++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stateful Halal'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Adalah telah berdzikir sebanyak',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10,),
              Text('$_kali',
              style: TextStyle(fontSize: 64, fontWeight: FontWeight.w400),),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: _tambah, child: Text('Tambah'))
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(Stateful());
}
