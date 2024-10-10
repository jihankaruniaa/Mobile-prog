#### Jihan Karunia Putri<br>2241720031 / 13 / TI-3B

# Layout dan Navigasi

## Tugas Praktikum 1
### Praktikum 1: Membangun Layout di Flutter
**Langkah 1: Buat Project Baru**

<img src = img6\Prak1-1.png>

<br>

**Langkah 2: Buka file lib/main.dart**
<br> Ganti dengan kode berikut

```
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout: Jihan Karunia Putri 2241720031',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
```

**Langkah 4: Implementasi title row**
```
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
      Widget titleSection = Container(
        padding: const EdgeInsets.all(32),
        child: Row(
          children: [
            Expanded(
              // soal 1: Expanded widget
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,  // Posisi kolom di kiri
                children: [
                  // soal 2: Baris pertama teks dengan padding di bawahnya
                  Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: const Text(
                      'Wisata Gunung di Batu',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // Baris kedua teks dengan warna abu-abu
                  Text(
                    'Batu, Malang, Indonesia',
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
            ),
            // soal 3: Ikon bintang dan teks rating
            Icon(
              Icons.star,
              color: Colors.red[500],
            ),
            const Text('41'),
          ],
        ),
      );
      
    return MaterialApp(
      title: 'Flutter layout: Jihan Karunia Putri 2241720031',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Column(
          children: [
            titleSection,
          ],
        ),
      ),
    );
  }
}
```
<img src = img6\Prak1-2.png>

### Praktikum 2: Implementasi button row
**Langkah 1: Buat method Column _buildButtonColumn**
<br> Membuat metode pembantu pribadi bernama buildButtonColumn(), yang mempunyai parameter warna, Icon dan Text, sehingga dapat mengembalikan kolom dengan widgetnya sesuai dengan warna tertentu.

```
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ···
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
```
<br>

**Langkah 2: Buat widget buttonSection**
<br> Membuat fungsi untuk menambahkan ikon langsung ke kolom.

```
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );
```
<br>

**Langkah 3: Tambah button section ke body**
<br> Menambahkan variabel buttonSection ke dalam body.

```
    return MaterialApp(
      title: 'Flutter layout: Jihan Karunia Putri 2241720031',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Column(
          children: [
            titleSection,
            buttonSection,
          ],
        ),
      ),
    );
```
<img src = img6\Prak2.png>

### Praktikum 3: Implementasi text section
**Langkah 1: Buat widget textSection**
<br> Menentukan bagian teks sebagai variabel.

```
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Carilah teks di internet yang sesuai '
        'dengan foto atau tempat wisata yang ingin '
        'Anda tampilkan. '
        'Tambahkan nama dan NIM Anda sebagai '
        'identitas hasil pekerjaan Anda. '
        'Selamat mengerjakan 🙂.',
        softWrap: true,
      ),
    );
```

**Langkah 2: Tambahkan variabel text section ke body**
<br> Menambahkan widget variabel textSection ke dalam body.

```
    return MaterialApp(
      title: 'Flutter layout: Jihan Karunia Putri 2241720031',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Column(
          children: [
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
```

<img src = img6\Prak3.png>

### Praktikum 4: Implementasi image section
**Langkah 1: Siapkan aset gambar**

<img src = img6\Prak4-1.png>

<br>

**Langkah 2: Tambahkan gambar ke body**
<br> Menambahkan aset gambar ke dalam body.
<img src = img6\Prak4-2.png>

<br>

**Langkah 3: Terakhir, ubah menjadi ListView**
Mengatur semua elemen dalam ListView, bukan Column.
```
    return MaterialApp(
      title: 'Flutter layout: Jihan Karunia Putri 2241720031',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/JTP1.webp',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
```

<img src = img6\Prak4-3.png>

### Implementasi "basic_layout_flutter"
**Material Apps**

<img src = img6\Ipl1.png>

**Cupertino Apps**

<img src = img6\Ipl2.png>

**Non-Material Apps**

<img src = img6\Ipl3.png>

**Layout multiple widgets vertically and horizontally**
- Aligning widgets: Row

<img src = img6\AWRow.png>

- Aligning widgets: Column
<img src = img6\AWColumn.png>

- Sizing widgets
<img src = img6\sizing.png>
<img src = img6\sizingflex.png>

- Packing widgets
<img src = img6\packing.png>

- Nesting rows and columns
<img src = img6\nesting.png>

- Common layout widgets<br>
*Container*

  <img src = img6\container.png>

- GridView
<img src = img6\grid.png>

- ListView
<img src = img6\list.png>

- Stack
<img src = img6\stack.png>

- Card
<img src = img6\card.png>

## Praktikum 5: Membangun Navigasi di Flutter
**Langkah 1: Siapkan project baru**

<img src = img6\Prak5-1.png>

<br>

**Langkah 2: Mendefinisikan Route**
- HomePage
  ```
  import 'package:flutter/material.dart';

  class HomePage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      // TODO: implement build
      throw UnimplementedError();
    }
  }
  ```

- ItemPage
  ```
  import 'package:flutter/material.dart';

  class ItemPage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      // TODO: implement build
      throw UnimplementedError();
    }
  }
  ```

**Langkah 3: Lengkapi Kode di main.dart**
```
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/item_page.dart';

void main() {
  runApp(MaterialApp(
    title: 'Belanja App',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    initialRoute: '/', // Halaman awal
    routes: {
      '/': (context) => HomePage(), // Route untuk HomePage
      '/item': (context) => ItemPage(), // Route untuk ItemPage
    },
  ));
}
```

**Langkah 4: Membuat data model**
```
class Item {
  String name;
  int price;

  Item({required this.name, required this.price});
}
```

**Langkah 5: Lengkapi kode di class HomePage**
```
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
        title: Text('Home'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index].name),
            subtitle: Text('Harga: ${items[index].price}'),
            onTap: () {
              Navigator.pushNamed(context, '/item',
                  arguments: items[index]); // Kirim data ke ItemPage
            },
          );
        },
      ),
    );
  }
}
```

**Langkah 6: Membuat ListView dan itemBuilder**
```
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
        title: Text('Home'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          // Menggunakan Card untuk menampilkan data item
          return Card(
            margin: EdgeInsets.all(8.0),
            elevation: 4,
            child: ListTile(
              title: Text(items[index].name),
              subtitle: Text('Harga: ${items[index].price}'),
              onTap: () {
                // Navigasi ke ItemPage dengan mengirim data item
                Navigator.pushNamed(context, '/item',
                    arguments: items[index]);
              },
            ),
          );
        },
      ),
    );
  }
}
```

<img src = img6\Prak5-2.png>

<br>

**Langkah 7: Menambahkan aksi pada ListView**
```
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
        title: Text('Home'),
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
```

<img src = img6\Prak5-3.png> 
<img src = img6\Prak5-4.png>

## Tugas Praktikum 2
1. Untuk melakukan pengiriman data ke halaman berikutnya, cukup menambahkan informasi arguments pada penggunaan Navigator.

    <img src = img6\TP2-1.png>

  <br>

2. Pembacaan nilai yang dikirimkan pada halaman sebelumnya dapat dilakukan menggunakan ModalRoute.

    <img src = img6\TP2-2.png>
  <br>

3. Pada hasil akhir dari aplikasi belanja yang telah anda selesaikan, tambahkan atribut foto produk, stok, dan rating. Ubahlah tampilan menjadi GridView seperti di aplikasi marketplace pada umumnya.
  <img src = img6\TP2-3.png>
  <img src = img6\TP2-4.png>

4. Implementasikan Hero widget pada aplikasi belanja.

- *HomePage*
  ```
  import 'package:belanja/models/item.dart';
  import 'package:flutter/material.dart';

  class HomePage extends StatelessWidget {
    final List<Item> items = [
      // Item List
    ];

    @override
    Widget build(BuildContext context) {
      ...
                      Hero(
                      tag: 'hero-${items[index].name}', // Tag unik untuk Hero
                      child: Container(
                        height: 100, // Tetapkan tinggi tetap untuk gambar
                        width: double.infinity,
                        child: Image.asset(
                          items[index].imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
      ...
    }
  }
  ```

- *ItemPage*
  ```
  import 'package:belanja/models/item.dart';
  import 'package:flutter/material.dart';

  class ItemPage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      ...
              Hero(
                tag: 'hero-${item.name}', // Tag yang sama untuk animasi Hero
                child: Image.asset(
                  item.imageUrl,
                  width: double.infinity,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
      ...
    }
  }
  ```
  <br> 
  <video src="img6/hero.mp4" width="640" height="480" controls></video>

5. Sesuaikan dan modifikasi tampilan sehingga menjadi aplikasi yang menarik. Selain itu, pecah widget menjadi kode yang lebih kecil. Tambahkan Nama dan NIM di footer aplikasi belanja Anda.
- *HomePage*
  ```
  import 'package:flutter/material.dart';
  import 'package:belanja/models/item.dart';

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
      Item(
        name: 'Beras',
        price: 57000,
        imageUrl: 'images/beras.jpg',
        stock: 100,
        rating: 4.8,
      ),
    ];

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: CustomAppBar(),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ItemGrid(items: items),
              ),
            ),
            Footer(),
          ],
        ),
      );
    }
  }

  // Custom AppBar dengan gradient background
  class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
    @override
    Widget build(BuildContext context) {
      return AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF0288D1), Color(0xFF26C6DA)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: Text(
          'Jihan Shop',
          style: TextStyle(color: Colors.white),
        ),
      );
    }

    @override
    Size get preferredSize => Size.fromHeight(kToolbarHeight);
  }

  // Grid Widget untuk menampilkan daftar item dengan efek hover pada Card
  class ItemGrid extends StatelessWidget {
    final List<Item> items;

    const ItemGrid({required this.items});

    @override
    Widget build(BuildContext context) {
      return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ItemCard(item: items[index]);
        },
      );
    }
  }

  // Widget untuk menampilkan detail setiap item dengan animasi hover
  class ItemCard extends StatelessWidget {
    final Item item;

    const ItemCard({required this.item});

    @override
    Widget build(BuildContext context) {
      return InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/item', arguments: item);
        },
        child: Card(
          margin: EdgeInsets.all(8.0),
          elevation: 6,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: 'hero-${item.name}',
                child: Container(
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                    image: DecorationImage(
                      image: AssetImage(item.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Harga: Rp ${item.price.toString().replaceAllMapped(
                            RegExp(r'(\d)(?=(\d{3})+(?!\d))'),
                            (Match m) => '${m[1]}.',
                          )}',
                      style: TextStyle(color: Colors.green[800]),
                    ),
                    Text('Stok: ${item.stock}'),
                    SizedBox(height: 4),
                    RatingBar(rating: item.rating),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

  // Widget RatingBar untuk menampilkan bintang dengan warna yang lebih jelas
  class RatingBar extends StatelessWidget {
    final double rating;

    const RatingBar({required this.rating});

    @override
    Widget build(BuildContext context) {
      return Row(
        children: List.generate(5, (index) {
          return Icon(
            index < rating.floor()
                ? Icons.star
                : (index < rating ? Icons.star_half : Icons.star_border),
            size: 16.0,
            color: Colors.yellow[700],
          );
        }),
      );
    }
  }

  // Footer yang tetap di bawah dengan ikon
  class Footer extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Container(
        color: Colors.grey[200],
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person, size: 18),
            SizedBox(width: 8),
            Text(
              'Jihan Karunia Putri | 2241720031',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      );
    }
  }
  ```

- *ItemPage*
  ```
  import 'package:flutter/material.dart';
  import 'package:belanja/models/item.dart';

  class ItemPage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      final Item item = ModalRoute.of(context)!.settings.arguments as Item;

      return Scaffold(
        appBar: AppBar(
          title: Text(
            item.name,
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color(0xFF0288D1),
        ),
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
                      height: 250,
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
  ```

  <br>
  <img src = img6\TP2-5.png>
  <img src = img6\TP2-6.png>

6. Modifikasi menggunakan plugin **go_router**
- *HomePage*
  ```
  import 'package:flutter/material.dart';
  import 'package:belanja/models/item.dart';
  import 'package:go_router/go_router.dart';

  class HomePage extends StatelessWidget {
    final List<Item> items = [
      // Item List
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
  ```
  <br>

- *ItemPage*
  ```
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
  ```
  <br>

- *Main*
  ```
  import 'package:belanja/pages/item_page.dart';
  import 'package:belanja/models/item.dart';
  import 'package:flutter/material.dart';
  import 'package:go_router/go_router.dart';
  import 'pages/home_page.dart';

  void main() {
    runApp(MyApp());
  }

  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      final GoRouter _router = GoRouter(
        initialLocation: '/',
        routes: [
          GoRoute(
            path: '/',
            builder: (context, state) => HomePage(),
          ),
          GoRoute(
            path: '/item',
            builder: (context, state) {
              final item = state.extra as Item; // Mengambil data item
              return ItemPage(item: item); // Meneruskan item ke ItemPage
            },
          ),
        ],
      );

      return MaterialApp.router(
        title: 'Belanja App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routerConfig: _router, // Menghubungkan konfigurasi router go_router
      );
    }
  }
  ```

  <br>
  <img src = img6\TP2-7.png>
  <img src = img6\TP2-8.png>