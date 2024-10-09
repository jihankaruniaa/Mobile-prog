class Item {
  String name;
  int price;
  String imageUrl; // URL gambar produk
  int stock; // Jumlah stok
  double rating; // Rating produk

  Item({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.stock,
    required this.rating,
  });
}