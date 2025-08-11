import 'package:flutter/material.dart';

class UserInputExample extends StatefulWidget {
  const UserInputExample({super.key});
  @override
  State<UserInputExample> createState() => _UserInputExampleState();
}

class _UserInputExampleState extends State<UserInputExample> {
// TextEditingController digunakan untuk mengontrol teks di

  final TextEditingController _nameController = TextEditingController();
  String _displayText = '';
  @override
  void dispose() {
    _nameController.dispose(); // Penting: buang controller saat
    super.dispose();
  }

  void _submitName() {
    setState(() {
      _displayText = 'Halo, ${_nameController.text}!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Pengguna'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController, // Menghubungkan
              decoration: const InputDecoration(
                labelText: 'Masukkan Nama Anda',
                border: OutlineInputBorder(), // Memberi border
                hintText: 'Misal: Budi Santoso',
              ),
              keyboardType: TextInputType.text, // Tipe keyboard
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submitName, // Panggil fungsi _submitName
              child: const Text('Tampilkan Nama'),
            ),
            const SizedBox(height: 20),
            Text(
              _displayText,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(home: UserInputExample()));
}
