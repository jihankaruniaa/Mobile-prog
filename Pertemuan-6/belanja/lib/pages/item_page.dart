import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ItemPage extends StatelessWidget {
  final Item item;

  // Tambahkan konstruktor untuk menerima item
  const ItemPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          item.name,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF0288D1),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: 'hero-${item.name}',
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 4),
                        blurRadius: 10.0,
                      ),
                    ],
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset(
                    item.imageUrl,
                    width: double.infinity,
                    height: 400,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 24),
              Text(
                item.name,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Harga: Rp ${item.price.toString().replaceAllMapped(
                      RegExp(r'(\d)(?=(\d{3})+(?!\d))'),
                      (Match m) => '${m[1]}.',
                    )}',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.green[700],
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Stok: ${item.stock}',
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),
              SizedBox(height: 16),
              Divider(color: Colors.grey[400], thickness: 1),
              SizedBox(height: 16),
              Row(
                children: List.generate(5, (index) {
                  return Icon(
                    index < item.rating.floor()
                        ? Icons.star
                        : (index < item.rating
                            ? Icons.star_half
                            : Icons.star_border),
                    color: Colors.yellow[700],
                    size: 24,
                  );
                }),
              ),
              SizedBox(height: 24),
              Text(
                "Deskripsi Item",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Ini adalah deskripsi singkat tentang ${item.name}. Produk ini memiliki kualitas yang sangat baik dengan rating ${item.rating} dari 5 bintang. Stok masih tersedia sebanyak ${item.stock} unit.",
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
              SizedBox(height: 32),
              Center(
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Aksi pembelian
                  },
                  icon: Icon(Icons.shopping_cart),
                  label: Text(
                    'Beli Sekarang',
                    style: TextStyle(fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: 32.0,
                      vertical: 12.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    backgroundColor: Color(0xFF0288D1),
                    foregroundColor: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
