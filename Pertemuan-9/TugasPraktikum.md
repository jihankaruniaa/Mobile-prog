### Jihan Karunia Putri <br> 13 / 2241720031 / TI-3B

1. Selesaikan Praktikum 1 dan 2, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file README.md! Jika terdapat error atau kode yang tidak dapat berjalan, silakan Anda perbaiki sesuai tujuan aplikasi dibuat!<br>
Jawab : <br>
Praktikum 1 terdapat pada file `kamera_flutter` pada Pertemuan-9 dan praktikum 2 terdapat pada file `photo_filter_carousel` pada Pertemuan-9.<br><br>
2. Gabungkan hasil praktikum 1 dengan hasil praktikum 2 sehingga setelah melakukan pengambilan foto, dapat dibuat filter carouselnya!<br>
Jawab : <br>
Hasil dari tugas nomo 2 terdapat pada file `kamera_filter_carousel` pada Pertemuan-9.<br><br>
3. Jelaskan maksud void async pada praktikum 1?<br>
Jawab : <br>
Fungsi yang ditulis dengan void dan async pada praktikum 1 menandakan bahwa fungsi tersebut tidak mengembalikan nilai (karena tipenya void), tetapi menjalankan operasi secara asynchronous dengan async. Ini berarti proses dalam fungsi tersebut akan berjalan di latar belakang tanpa menghentikan proses utama aplikasi. Dalam konteks ini, penggunaan async berguna agar aplikasi tetap responsif saat menunggu hasil pengambilan gambar (fungsi takePicture()).<br>
Contoh :
    ```dart
    Future<void> main() async {
    ...
    }
    ```
    async memungkinkan fungsi tersebut untuk menggunakan kata kunci await pada operasi yang membutuhkan waktu, seperti takePicture().<br><br>
4. Jelaskan fungsi dari anotasi @immutable dan @override?<br>
Jawab : <br>
- *@immutable*<br>
Anotasi @immutable menandakan bahwa suatu kelas tidak boleh diubah setelah dibuat. Kelas yang diberi anotasi ini diharapkan memiliki nilai yang tetap, sehingga dapat menghindari perubahan yang tidak diinginkan yang dapat menyebabkan bug. Dengan menjadikan objek immutable, Flutter dapat mengoptimalkan kinerja aplikasi dengan lebih baik. Pada praktikum, kelas FilterSelector diberi anotasi @immutable. Anotasi ini menunjukkan bahwa setelah objek dari kelas ini dibuat, nilai-nilai propertinya tidak akan berubah:
    ```dart
    @immutable
    class FilterSelector extends StatefulWidget {
    const FilterSelector({
        super.key,
        required this.filters,
        required this.onFilterChanged,
        this.padding = const EdgeInsets.symmetric(vertical: 24),
    });

    final List<Color> filters;
    final void Function(Color selectedColor) onFilterChanged;
    final EdgeInsets padding;

    // ...
    }
    ```

    Dalam contoh ini, semua propertinya (filters, onFilterChanged, dan padding) dideklarasikan sebagai final, yang berarti nilainya tidak dapat diubah setelah objek FilterSelector dibuat.

- *@override*<br>
Anotasi @override digunakan saat sebuah metode dalam kelas turunan ingin menggantikan metode yang ada di kelas induk. Ini membuat kode lebih jelas dan membantu mencegah kesalahan jika metode yang dimaksud tidak ada di kelas induk. Dengan menggunakan anotasi ini, pengembang dapat memastikan bahwa metode yang ditulis benar-benar dimaksudkan untuk menimpa metode dari kelas yang lebih tinggi. Anotasi @override digunakan di dalam kelas _PhotoFilterCarouselState untuk menimpa metode build dari kelas induknya, State. Ini memungkinkan pengembang untuk mendefinisikan cara tampilan kelas ini:
    ```dart
    class _PhotoFilterCarouselState extends State<PhotoFilterCarousel> {
    // ...

    @override
    Widget build(BuildContext context) {
        return Material(
        color: Colors.black,
        child: Stack(
            children: [
            Positioned.fill(
                child: _buildPhotoWithFilter(),
            ),
            Positioned(
                left: 0.0,
                right: 0.0,
                bottom: 0.0,
                child: _buildFilterSelector(),
            ),
            ],
        ),
        );
    }
    }
    ```
    Dalam contoh ini, metode build yang dioverride bertanggung jawab untuk membangun tampilan widget PhotoFilterCarousel, dan dengan menambahkan anotasi @override, jelas bahwa metode ini menggantikan implementasi dari kelas State.