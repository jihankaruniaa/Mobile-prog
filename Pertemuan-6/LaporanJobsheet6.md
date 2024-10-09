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