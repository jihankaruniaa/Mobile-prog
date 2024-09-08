## TUGAS PRAKTIKUM Pengantar Bahasa Pemrograman Dart - Bagian 1
1. Modifikasilah kode pada baris 3 di VS Code atau Editor Code  favorit Anda berikut ini agar mendapatkan keluaran (output) sesuai yang diminta!
    - Kode Program
    
    <img src = img/M2.png>
    
    - Output

    <img src = img/M2-1.png>

    
2. Mengapa sangat penting untuk memahami bahasa pemrograman Dart sebelum kita menggunakan framework Flutter ? Jelaskan!
    - Memahami Dart sangat penting sebelum kita menggunakan Flutter karena Flutter sepenuhnya dibangun di atas bahasa ini. Semua kode yang akan ditulis dalam pengembangan aplikasi Flutter menggunakan Dart, sehingga penguasaan Dart diperlukan untuk menulis kode yang efektif. Selain itu, banyak fitur utama Flutter, seperti hot reload dan widget, bergantung pada kemampuan dan integrasi mendalam dengan Dart. Dart juga mendukung kompilasi Just-In-Time (JIT) dan Ahead-Of-Time (AOT), yang penting untuk mengoptimalkan performa aplikasi. Karena Dart adalah bahasa berorientasi objek, pemahaman konsep OOP juga akan sangat membantu dalam membangun struktur aplikasi yang modular dan mudah dipelihara. Menguasai Dart juga diperlukan untuk membuat widget dan plugin khusus, serta mempermudah proses debugging dan pengembangan secara keseluruhan.

3. Rangkumlah materi dari codelab ini menjadi poin-poin penting yang dapat Anda gunakan untuk membantu proses pengembangan aplikasi mobile menggunakan framework Flutter.
   #### Geeting started with Dart
    - Dart dirancang untuk menggabungkan kelebihan dari sebagian besar bahasa tingkat tinggi dengan fitur bahasa pemrograman modern.
    - Penting untuk memahami Dart secara mendalam karena Flutter sangat bergantung pada bahasa ini.
    - Fitur-fitur penting Dart:
    1) Productive Tooling: Alat produktif untuk analisis kode dan plugin IDE.
    2) Garbage Collection: Mengelola memori otomatis.
    3) Type Annotations: Opsional tetapi meningkatkan keamanan dan konsistensi data.
    4) Statically Typed: Type-safe dan type inference untuk mendeteksi bug lebih awal.
    5) Portability: Mendukung pengembangan lintas platform, termasuk web dan native.
    #### The evolution of Dart
    - Awalnya fokus pada web sedangkan sekarang fokus pada mobile development, terutama Flutter.
    - Mengatasi masalah JavaScript. Dart dirancang untuk menggantikan JavaScript dengan stabilitas lebih tinggi.
    - Performa tinggi dan alat modern sehingga mendukung proyek besar dengan perkakas yang stabil.
    - Fleksibel dan kuat, dengan type annotations opsional dan fitur OOP, Dart dapat menyeimbangkan dua fitur utama yaitu fleksibilitas dan ketangguhan.
    #### How Dart works
    - Terdapat 2 cara mengeksekusi Dart :
        1) Dart Virtual Machine (VM): Kode Dart dijalankan langsung dalam lingkungan yang mendukung Dart.
        2) JavaScript Compilation: Dart dikompilasi menjadi JavaScript untuk dijalankan di lingkungan web.
    - Terdapat 2 mode-komplikasi :
        1) Just-In-Time (JIT): Kode dikompilasi saat dibutuhkan, ideal untuk pengembangan karena mendukung debugging dan hot reload.
        2) Ahead-Of-Time (AOT): Kode dikompilasi sebelumnya, memberikan performa lebih tinggi tetapi tidak mendukung debugging dan hot reload.
    - Fitur utama Flutter yang memungkinkan pengembang melihat perubahan kode secara instan, didukung oleh Dart JIT.
    #### Introducing the structure of the Dart language
    - Dart adalah bahasa berorientasi objek dengan fitur OOP seperti encapsulation, inheritance, composition, abstraction, dan polymorphism.
    - Dart Operators
        - (+) untuk tambahan
        - (-) untuk pengurangan.
        - (*) untuk perkalian.
        - (/) untuk pembagian.
        - (~/) untuk pembagian bilangan bulat.
        - (%) untuk operasi modulus (sisa bagi dari bilangan bulat).
        - -expression untuk negasi (yang membalikkan suatu nilai).
        - Shortcut Operator: +=, -=, *=, /=, ~/=.
        - ++var atau var++ untuk menambah nilai variabel var sebesar 1
        - --var atau var-- untuk mengurangi nilai variabel var sebesar 1
        - == untuk memeriksa apakah operan sama
        - != untuk memeriksa apakah operan berbeda
        - (>) memeriksa apakah operan kiri lebih besar dari operan kanan
        - (<) memeriksa apakah operan kiri lebih kecil dari operan kanan
        - (>=) memeriksa apakah operan kiri lebih besar dari atau sama dengan operan kanan
        - (<=) memeriksa apakah operan kiri kurang dari atau sama dengan operan kanan
        - !expression negasi atau kebalikan hasil ekspresi—yaitu, true menjadi false dan false menjadi true.
        - || menerapkan operasi logika OR antara dua ekspresi.
        - && menerapkan operasi logika AND antara dua ekspresi.
    #### Hands-on with Dart
    - Contoh kode:

       <img src = img/M2-2.png>

    - void main() adalah titik awal eksekusi kode.
    - void menunjukkan fungsi tidak mengembalikan nilai.
    - main adalah nama fungsi utama yang dicari oleh Dart VM.
    - kurung kurawal {} menentukan awal dan akhir blok kode fungsi.