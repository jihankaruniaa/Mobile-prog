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
                      'Jawa Timur Park 1',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // Baris kedua teks dengan warna abu-abu
                  Text(
                    'Jl. Kartika No.2, Sisir, Kec. Batu, Kota Batu, Jawa Timur 65315',
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
      
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Jawa Timur Park Satu adalah taman hiburan dengan tema pameran adat budaya Indonesia yang dilengkapi dengan pembelajaran science center. '
        'Objek wisata ini memiliki 36 wahana, di antaranya kolam renang raksasa (dengan latar belakang patung Ken Dedes, Ken Arok, dan Mpu Gandring),'
        'spinning coaster, dan drop zone. Wahana pendidikan yang menjadi pusat perhatian di antaranya adalah Volcano dan Galeri Nusantara yang juga '
        'terdapat tanaman agro, diorama binatang langka, dan miniatur candi-candi.'
        '\n\n'
        'Jihan Karunia Putri - 2241720031',
        softWrap: true,
      ),
    );

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