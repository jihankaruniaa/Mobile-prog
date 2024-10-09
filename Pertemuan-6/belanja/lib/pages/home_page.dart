import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
    final List<Item> items = [
    Item(name: 'Gula', price: 13000),
    Item(name: 'Tepung Terigu', price: 8000),
    Item(name: 'Garam', price: 4000),
    Item(name: 'Kentang', price: 16000),
    Item(name: 'Tomat', price: 12000),
    Item(name: 'Daging Sapi', price: 134000),
    Item(name: 'Beras', price: 57000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Daftar Belanja',
          style: TextStyle(color: Colors.white), // Tulisan warna putih
          ),
          backgroundColor: Color(0xFF0288D1), // Warna biru cerah
        ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              // Navigasi ke ItemPage dengan mengirim data item
              Navigator.pushNamed(context, '/item', arguments: items[index]);
            },
            child: Card(
              margin: EdgeInsets.all(8.0), // Margin antar card
              elevation: 4, // Efek bayangan
              child: ListTile(
                title: Text(items[index].name),
                subtitle: Text('Harga: ${items[index].price}'),
              ),
            ),
          );
        },
      ),
    );
  }
}