import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  String _message = "Tekan Tombol!";

  void _updateMessage() {
    setState(() {
      _message = "Aku telah Ditekan :>";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Materi Bab4"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "On Pressed Button",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
            ),
            SizedBox(height: 20),
            Text(_message),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: _updateMessage, child: Text('Tekan Saya')),

            // onChanged
            SizedBox(height: 50),
            Text('On Changed', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),),
            TextField(
              onChanged: (text) {
                print('Ketik sesuatu: $text');
              },
              decoration: const InputDecoration(
                labelText: 'Ketik sesuatu',
              ),
            )
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Button(),
  ));
}
