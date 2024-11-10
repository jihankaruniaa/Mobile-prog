### Jihan Karunia Putri <br> 2241720031 / 13 / TI-3B

# Lanjutan State Management dengan Streams
## Praktikum 7: BLoC Pattern
#### Soal 13
Jelaskan maksud praktikum ini ! Dimanakah letak konsep pola BLoC-nya ?
- Jawab:<br>
Maksud dari praktikum ini adalah untuk memahami dan mengimplementasikan pola BLoC (Business Logic Component) di Flutter, yang memisahkan logika bisnis dari antarmuka pengguna (UI). Praktikum ini menunjukkan bagaimana cara menggunakan Stream dan StreamController untuk membuat aliran data (dalam hal ini, angka acak) yang dikelola di dalam komponen logika bisnis (RandomNumberBloc) dan dikonsumsi oleh antarmuka pengguna (RandomScreen). Ini memungkinkan pengembangan aplikasi yang lebih terstruktur, mudah diuji, dan lebih terjaga dari kebocoran memori karena penggunaan dispose.<br>
**Letak Konsep Pola BLoC:**
    1. Pemisahan Logika Bisnis: Logika untuk menghasilkan angka acak diletakkan di dalam RandomNumberBloc, bukan di UI, menjaga antarmuka tetap bersih.
    2. Penggunaan Stream dan Sink: Stream menyediakan aliran data angka acak, sementara Sink menerima event untuk memicu pembuatan angka baru, membuat UI tidak perlu mengelola logika angka acak.
    3. Komunikasi Melalui Stream: UI menggunakan StreamBuilder untuk mendengarkan data dari RandomNumberBloc dan memperbarui tampilan setiap kali data berubah, tanpa memproses logika bisnis langsung di widget.
    4. Pembersihan Resource: dispose digunakan untuk menutup StreamController di RandomNumberBloc, mencegah kebocoran memori sesuai dengan prinsip BLoC.

    <img src="images/Soal13.gif" width="300px">
