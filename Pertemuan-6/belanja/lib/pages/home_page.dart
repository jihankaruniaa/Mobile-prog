import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      name: 'Gula',
      price: 13000,
      imageUrl: 'images/gula.webp',
      stock: 50,
      rating: 4.5,
    ),
    Item(
      name: 'Tepung Terigu',
      price: 8000,
      imageUrl: 'images/tepung_terigu.jpg',
      stock: 30,
      rating: 4.0,
    ),
    Item(
      name: 'Garam',
      price: 4000,
      imageUrl: 'images/garam.jpg',
      stock: 100,
      rating: 4.8,
    ),
    Item(
      name: 'Beras',
      price: 57000,
      imageUrl: 'images/beras.jpg',
      stock: 100,
      rating: 4.8,
    ),
    Item(
      name: 'Kentang',
      price: 16000,
      imageUrl: 'images/kentang.webp',
      stock: 50,
      rating: 4.5,
    ),
    Item(
      name: 'Tomat',
      price: 12000,
      imageUrl: 'images/tomat.jpeg',
      stock: 30,
      rating: 4.0,
    ),
    Item(
      name: 'Daging Sapi',
      price: 134000,
      imageUrl: 'images/daging_sapi.jpg',
      stock: 100,
      rating: 4.8,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Jihan Shop',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.white,
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Jumlah kolom dalam grid
          childAspectRatio: 0.75, // Rasio aspek untuk item grid
          crossAxisSpacing: 10.0, // Jarak antar kolom
          mainAxisSpacing: 10.0, // Jarak antar baris
        ),
        padding: const EdgeInsets.all(10.0),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return GestureDetector(
            onTap: () {
              // Navigasi ke ItemPage dan kirim item sebagai parameter
              context.go('/item', extra: item);
            },
            child: Card(
              elevation: 4,
              color: Colors.grey[50],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(0.5),
                        child: Image.asset(
                          item.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      item.name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Harga: Rp ${item.price.toString().replaceAllMapped(
                        RegExp(r'(\d)(?=(\d{3})+(?!\d))'),
                        (Match m) => '${m[1]}.',
                      )}',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.green[700],
                      ),
                    ),
                    SizedBox(height: 4),
                    Text('Stok: ${item.stock} unit'),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}