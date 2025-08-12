// Kalkulator - Wibowo Assariy
import 'package:flutter/material.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kalkulator App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();

  String _hasil = '0';

  void _hitung(String operation) {
    final String angka1 = _controller1.text;
    final String angka2 = _controller2.text;

    final double? num1 = double.tryParse(angka1);
    final double? num2 = double.tryParse(angka2);

    if (num1 == null || num2 == null) {
      setState(() {
        _hasil = 'Input tidak valid';
      });
      return;
    }

    double tempResult = 0;

    switch (operation) {
      case '+':
        tempResult = num1 + num2;
        break;
      case '-':
        tempResult = num1 - num2;
        break;
      case 'x':
        tempResult = num1 * num2;
        break;
      case '/':
        if (num2 == 0) {
          setState(() {
            _hasil = 'Tidak dapat membagi dengan nol';
          });
          return;
        }
        tempResult = num1 / num2;
        break;
    }

    setState(() {
      _hasil = tempResult.toStringAsFixed(2);

      if (_hasil.endsWith('.00')) {
        _hasil = _hasil.substring(0, _hasil.length - 3);
      }
    });
  }

  @override
  Widget build(BuildContext contex) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kalkulator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(20),
              alignment: Alignment.centerRight,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                _hasil,
                style:
                    const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _controller1,
              decoration: const InputDecoration(
                labelText: 'Angka pertama',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: _controller2,
              decoration: const InputDecoration(
                labelText: 'Angka Kedua',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _tombolOperasi('+'),
                _tombolOperasi('-'),
                _tombolOperasi('x'),
                _tombolOperasi('/'),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _tombolOperasi(String operation) {
    return ElevatedButton(
      onPressed: () => _hitung(operation),
      child: Text(operation),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(20),
        textStyle: const TextStyle(fontSize: 24),
      ),
    );
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    super.dispose();
  }
}
