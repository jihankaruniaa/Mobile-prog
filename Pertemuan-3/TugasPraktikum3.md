## PRAKTIKUM 1: Menerapkan Control Flows ("if/else")
#### Langkah 1
Ketik atau salin kode program berikut ke dalam fungsi main().

<img src = img3/Prak1-1.png>

#### Langkah 2
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!
- Output :

    <img src = img3/Prak1-2.png>

    Pertama, memeriksa apakah variabel test berisi nilai "test1" yang kondisinya tidak cocok, sehingga melanjutkan ke pernyataan else if yang memeriksa apakah test berisi "test2". Karena cocok, program mengeluarkan output "Test2". Setelah itu, ada pernyataan if kedua yang kembali memeriksa apakah test berisi "test2", dan karena kondisi ini juga benar, program mencetak "Test2 again". Sehingga, output akhirnya adalah "Test2" diikuti oleh "Test2 again".

#### Langkah 3
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

<img src = img3/Prak1-3.png>

Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan if/else.
- Yang terjadi adalah error, karena test2 merupakan boolean.

    <img src = img3/Prak1-4.png>

- Perbaikan

    <img src = img3/Prak1-5.png>

- Output

    <img src = img3/Prak1-4.png>

## PRAKTIKUM 2: Menerapkan Perulangan "while" dan "do-while"
#### Langkah 1
Ketik atau salin kode program berikut ke dalam fungsi main().

<img src = img3/Prak2-1.png>

#### Langkah 2
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.
- Setelah di run terjadi error, karena  variabel counter tidak dideklarasikan.

    <img src = img3/Prak2-4.png>

- Perbaikan

    <img src = img3/Prak2-2.png>

- Output :

    <img src = img3/Prak2-3.png>

    Loop while mencetak nilai counter dari 0 hingga 32, karena kondisinya adalah counter < 33. Setelah counter mencapai 33, loop while berhenti.

#### Langkah 3
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

<img src = img3/Prak2-5.png>

Output :

<img src = img3/Prak2-6.png>
<img src = img3/Prak2-7.png>

Setelah loop while berhenti, loop do-while dijalankan, yang langsung mencetak nilai counter (yang saat ini 33) dan terus menambahkannya hingga mencapai 76. 

## PRAKTIKUM 3: Menerapkan Perulangan "for" dan "break-continue"
#### Langkah 1
Ketik atau salin kode program berikut ke dalam fungsi main().

<img src = img3/Prak3-1.png>

#### Langkah 2
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.
Output terjadi error karena variabel Index belum dideklarasikan dan tidak ada inkrementasi variabel index :

<img src = img3/Prak3-2.png>

Perbaikan 

<img src = img3/Prak3-3.png>

Output :

<img src = img3/Prak3-4.png>

Loop for akan dimulai dengan variabel index diinisialisasi dengan nilai 10. Selama nilai index kurang dari 27, program akan mencetak nilai index dan kemudian menambahkannya satu setiap iterasi. Ini berarti program akan mencetak angka dari 10 hingga 26 secara berurutan.

#### Langkah 3
Tambahkan kode program berikut di dalam for-loop, lalu coba eksekusi (Run) kode Anda.
- Terjadi error

    <img src = img3/Prak3-5.png>

- Perbaikan 

    <img src = img3/Prak3-6.png>

- Output

    <img src = img3/Prak3-7.png>

    Pada loop for akan mulai dengan index bernilai 10 dan mencetak setiap nilai index hingga 26. Namun, jika index sama dengan 21, pernyataan break akan menghentikan loop sepenuhnya. Dalam setiap iterasi, jika index lebih besar dari 1 atau kurang dari 7, pernyataan continue akan melewati sisa kode dalam loop dan melanjutkan ke iterasi berikutnya. Pada nilai index yang memenuhi kondisi continue, yaitu dari 10 hingga 20, nilai index dicetak sebelum melanjutkan ke iterasi berikutnya. Namun, pada nilai index 21, loop dihentikan dan tidak mencetak nilai index lebih lanjut. Oleh karena itu, output yang dihasilkan adalah angka dari 10 hingga 20, dan kemudian loop berhenti tanpa mencetak 21 atau angka setelahnya.


## Tugas Praktikum No. 2
#### Buatlah sebuah program yang dapat menampilkan bilangan prima dari angka 0 sampai 201 menggunakan Dart. Ketika bilangan prima ditemukan, maka tampilkan nama lengkap dan NIM Anda.

- Kode Program
```
void main() {
  String namaLengkap = "Jihan Karunia Putri";
  String nim = "2241720031";

  for (int i = 0; i <= 201; i++) {
    if (Prima(i)) {
      print("Bilangan prima: $i");
      print("$namaLengkap");
      print("$nim");
      print("");
    }
  }
}

bool Prima(int j) {
  if (j <= 1)
    return false; // Bilangan kurang dari atau sama dengan 1 bukan bilangan prima
  if (j <= 3) return true; // Bilangan 2 dan 3 adalah bilangan prima
  if (j % 2 == 0 || j % 3 == 0)
    return false; // Bilangan yang habis dibagi 2 atau 3 bukan bilangan prima

  for (int i = 5; i * i <= j; i += 6) {
    // Cek dari 5 hingga akar kuadrat j
    if (j % i == 0 || j % (i + 2) == 0) return false; // Cek pembagi i dan i + 2
  }

  return true;
}
```

- Output :

<img src = img3/Tugas3.png>

