// Katalog Produk - Wibowo Assariy (Bab 5)
import 'package:flutter/material.dart';

void main() {
  runApp(const ProductCatalogApp());
}

class ProductCatalogApp extends StatelessWidget {
  const ProductCatalogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductListScreen(),
    );
  }
}

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  final List<Map<String, dynamic>> products = const [
    {
      'name': 'Laptop Gaming',
      'price': 15000000,
      'description': 'Laptop gaming dengan performa tinggi dan layar 15 inci',
    },
    {
      'name': 'Smartphone',
      'price': 5000000,
      'description': 'Smartphone canggih dengan kamera 108MP',
    },
    {
      'name': 'Headphone',
      'price': 750000,
      'description': 'Headphone nyaman dengan kualitas suara jernih',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar Produk"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            title: Text(product['name']),
            subtitle: Text("Rp ${product['price']}"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(
                    name: product['name'],
                    price: product['price'],
                    description: product['description'],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class ProductDetailScreen extends StatelessWidget {
  final String name;
  final int price;
  final String description;

  const ProductDetailScreen({
    super.key,
    required this.name,
    required this.price,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text("Rp $price", style: const TextStyle(fontSize: 18, color: Colors.green)),
            const SizedBox(height: 10),
            Text(description),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // kembali ke daftar produk
              },
              child: const Text("Kembali ke Daftar"),
            ),
          ],
        ),
      ),
    );
  }
}
