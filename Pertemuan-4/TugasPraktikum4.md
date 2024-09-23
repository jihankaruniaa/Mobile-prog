### Jihan Karunia Putri
### 13 / 2241720031 / TI-3B

# Praktikum 4 - Pengantar Bahasa Pemrograman Dart Bagian 3

## Praktikum 1: Eksperimen Tipe Data List
#### Langkah 1
Ketik atau salin kode program berikut ke dalam void main().
```
void main() {
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);
  print(list.length);
  print(list[1]);

  list[1] = 1;
  assert(list[1] == 1);
  print(list[1]);
}
```

#### Langkah 2
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!

Hasil output :

  <img src = img4/1.png>

  Pada kode program tersebut mendeklarasikan sebuah list berisi tiga elemen [1, 2, 3] dan menggunakan assert untuk memeriksa bahwa panjang list adalah 3 dan elemen kedua bernilai 2. Program mencetak panjang list (3) dan nilai elemen kedua (2). Kemudian, elemen kedua diubah menjadi 1, dan assert memverifikasi perubahan tersebut. Jika kondisi benar, program mencetak nilai baru dari elemen kedua (1). Hasil akhir yang dicetak adalah 3, 2, dan 1, menunjukkan bahwa modifikasi list berhasil dan pemeriksaan kondisi valid.

#### Langkah 3
Ubah kode pada langkah 1 menjadi variabel final yang mempunyai index = 5 dengan default value = null. Isilah nama dan NIM Anda pada elemen index ke-1 dan ke-2.
- Kode program :
```
void main() {
  final List<String?> list = List.filled(5, null);
  assert(list.length == 5);

  list[1] = 'Jihan Karunia Putri';
  list[2] = '2241720031';

  print(list.length);
  print(list[1]);
  print(list[2]);
}
```

- Hasil output :

    <img src = img4/2.png>

    Pada kode program tersebut, list dideklarasikan sebagai List<String?> agar elemen-elemen dapat berupa String atau null. Kode ini membuat list yang memiliki 5 index dengan nilai awal null untuk setiap elemen menggunakan List.filled(5, null). Elemen pada index ke-1 dan ke-2 diisi dengan nama dan NIM, sedangkan elemen lainnya tetap null. Program kemudian memverifikasi panjang list dan mencetak elemen ke-1 dan ke-2 yang sudah diisi. Sehingga, menghasilkan output seperti gambar di atas.

## Praktikum 2: Eksperimen Tipe Data Set
#### Langkah 1
Ketik atau salin kode program berikut ke dalam fungsi main().
```
void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);
}
```

#### Langkah 2
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.
Hasil Output :

  <img src = img4/3.png>

  Pada kode program terebut mendeklarasikan sebuah set bernama halogens yang berisi lima elemen berupa string: 'fluorine', 'chlorine', 'bromine', 'iodine', dan 'astatine'. Set adalah koleksi unik yang tidak berisi elemen duplikat dan tidak terurut. Ketika print(halogens) dipanggil, program akan mencetak seluruh elemen set tersebut dalam urutan yang tidak ditentukan (bukan berdasarkan urutan penambahan).

#### Langkah 3
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
- Kode program :
```
void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  var names3 = {}; // Creates a map, not a set.

  print(names1);
  print(names2);
  print(names3);
}
```

- Hasil output :

    <img src = img4/4.png>

    Pada kode program tersebut, sebuah set halogens berisi lima elemen string dideklarasikan dan dicetak, menampilkan elemen-elemen dalam urutan acak karena set tidak menjamin urutan. Kemudian, dua set kosong, names1 dan names2, dideklarasikan dan dicetak, keduanya menghasilkan set kosong {}. Namun, names3 dideklarasikan tanpa tipe eksplisit, sehingga menjadi sebuah map kosong, bukan set, meskipun tampilannya juga berupa {}.

  Tambahkan elemen nama dan NIM Anda pada kedua variabel Set tersebut dengan dua fungsi berbeda yaitu .add() dan .addAll(). Untuk variabel Map dihapus, nanti kita coba di praktikum selanjutnya.

- Kode program :
```
void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.

  names1.add('Jihan Karunia Putri');
  print(names1);

  names2.addAll(['Jihan Karunia Putri', '2241720031']);
  print(names2);
}
```

- Hasil Output :
  
    <img src = img4/5.png>

## Praktikum 3: Eksperimen Tipe Data Maps
#### Langkah 1
Ketik atau salin kode program berikut ke dalam fungsi main().
```
void main() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print(gifts);
  print(nobleGases);
}
```

#### Langkah 2
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.
Hasil output :

  <img src = img4/6.png>

  Kode tersebut mendefinisikan dua Map di Dart, yaitu gifts dan nobleGases, di mana Map adalah struktur data yang menyimpan pasangan key-value. Map gifts menggunakan key bertipe String seperti 'first', 'second', dan 'fifth', dengan value berupa campuran String dan int. Sedangkan nobleGases menggunakan key bertipe int seperti 2, 10, dan 18, dengan value berupa campuran String dan int. Saat kode dieksekusi, fungsi print() menampilkan isi dari kedua Map tersebut dalam bentuk pasangan key-value.

#### Langkah 3
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
- Kode program
```
void main() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print(gifts);
  print(nobleGases);

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
}
```
- Hasil Output :

    <img src = img4/7.png>

    Terjadi kesalahan, pada baris gifts['fifth'] = 'golden rings';, terjadi error karena key 'fifth' di Map gifts awalnya memiliki value bertipe int, namun kemudian diubah menjadi String, sedangkan Dart, sebagai bahasa yang statis, tidak mengizinkan perubahan tipe data value pada key yang sama. Masalah serupa juga muncul di Map nobleGases, di mana key 18 awalnya memiliki value int, tetapi diubah menjadi String dengan nobleGases[18] = 'argon';

- Perbaikan Kode Program :
```
void main() {
  var gifts = {
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print(gifts);
  print(nobleGases);

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings'; // mengubah nilai 'fifth' menjadi string

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon'; // mengubah nilai 18 menjadi string

  print(gifts);
  print(nobleGases);
}
```
- Hasil Output :

    <img src = img4/8.png>

    Perubahan pada peta gifts, nilai untuk kunci 'fifth' telah diubah menjadi string 'golden rings', yang sebelumnya merupakan integer. Pada peta nobleGases, nilai untuk kunci 18 diubah menjadi 'argon', dari sebelumnya integer 2.

Tambahkan elemen nama dan NIM Anda pada tiap variabel di atas (gifts, nobleGases, mhs1, dan mhs2).
- Kode Program :
```
void main() {
  var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 1,
  'nama': 'Jihan Karunia Putri',
  'nim': '2241720031',
  };

  var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 2,
  19: 'Jihan Karunia Putri',
  20: '2241720031',
  };

  print(gifts);
  print(nobleGases);

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
  mhs1['nama'] = 'Jihan Karunia Putri';
  mhs1['nim'] = '2241720031';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
  mhs2[1] = 'Jihan Karunia Putri';
  mhs2[2] = '2241720031';

  print(mhs1);
  print(mhs2);
}
```

- Hasil Output :

    <img src = img4/9.png>

## Praktikum 4: Eksperimen Tipe Data List: Spread dan Control-flow Operators
#### Langkah 1
Ketik atau salin kode program berikut ke dalam fungsi main().
```
void main(){
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list1);
  print(list2);
  print(list2.length);
}
```

#### Langkah 2
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

  <img src = img4/10.png>

  Terjadi error karena variabel list1 tidak didefinisikan dalam kode.

- Perbaikan Kode Program :
```
void main(){
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);
}
```

- Hasil Output 

  <img src = img4/11.png>


#### Langkah 3
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
```
void main(){
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);

  list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3.length);
}
```

Apa yang terjadi ? Jika terjadi error, silakan perbaiki.

  <img src = img4/12.png>

  Terjadi error karena variabel list1 tidak dideklarasikan sebagai var atau final.

- Perbaikan Kode Program
```
void main(){
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);

  var list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3.length);
}
```
- Hasil Output :

  <img src = img4/13.png>

Tambahkan variabel list berisi NIM Anda menggunakan Spread Operators.
```
void main(){
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);

  var list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3.length);

  var listNIM = ['2241720031'];
  var newListNIM = [...listNIM, ...list];
  
  print(listNIM);
  print(newListNIM);
}
```

  <img src = img4/14.png>

#### Langkah 4
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
- True

```
void main(){
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);

  var list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3.length);

  var listNIM = ['2241720031'];
  var newListNIM = [...listNIM, ...list];
  
  print(listNIM);
  print(newListNIM);

  var promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);
}
```

  <img src = img4/15.png>

- False
```
void main(){
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);

  var list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3.length);

  var listNIM = ['2241720031'];
  var newListNIM = [...listNIM, ...list];
  
  print(listNIM);
  print(newListNIM);

  var promoActive = false;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);
}
```

<img src = img4/16.png>

#### Langkah 5
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
```
void main(){
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);

  var list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3.length);

  var listNIM = ['2241720031'];
  var newListNIM = [...listNIM, ...list];
  
  print(listNIM);
  print(newListNIM);

  var promoActive = false;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);


  var login = 'Manager';
  var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
  print(nav2);
}
```
<img src = img4/17.png>

-  Jika variabel login mempunyai kondisi lain.
```
void main(){
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);

  var list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3.length);

  var listNIM = ['2241720031'];
  var newListNIM = [...listNIM, ...list];
  
  print(listNIM);
  print(newListNIM);

  var promoActive = false;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);


  var login = 'Staff';
  var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
  print(nav2);
}
```

<img src = img4/18.png>


#### Langkah 6
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
```
void main(){
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);

  var list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3.length);

  var listNIM = ['2241720031'];
  var newListNIM = [...listNIM, ...list];
  
  print(listNIM);
  print(newListNIM);

  var promoActive = false;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);


  var login = 'Staff';
  var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
  print(nav2);

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}
```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Jelaskan manfaat Collection For dan dokumentasikan hasilnya.
- Hasil Output :

<img src = img4/19.png>

- Manfaat Collection For
  **Collection For** dalam Dart memudahkan pembuatan list secara dinamis dan ringkas dengan mengiterasi elemen dari list lain. Fitur ini memungkinkan penulisan kode yang lebih sederhana dan mudah dibaca dibandingkan loop tradisional. Dengan Collection For, pengembang dapat dengan cepat menghasilkan list baru berdasarkan kondisi atau logika tertentu, sehingga mempercepat proses manipulasi data dan mengurangi risiko kesalahan. Hal ini juga meningkatkan efisiensi kode, terutama saat bekerja dengan koleksi data yang kompleks.

## Praktikum 5: Eksperimen Tipe Data Records
#### Langkah 1
Ketik atau salin kode program berikut ke dalam fungsi main().
```
void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);
}
```

#### Langkah 2
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

<img src = img4/20.png>

- Pada kode program tersebut memanfaatkan record untuk menyimpan beberapa nilai yang berbeda (string, integer, boolean), dan menggunakan labels untuk sebagian nilai. Ini memperlihatkan fleksibilitas record dalam menyimpan dan menampilkan kumpulan data yang ringkas dan efisien.

#### Langkah 3
Tambahkan kode program berikut di luar scope void main(), lalu coba eksekusi (Run) kode Anda.
```
void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);
}
(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
```

Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Gunakan fungsi tukar() di dalam main() sehingga tampak jelas proses pertukaran value field di dalam Records.
- Hasil Output :

  <img src = img4/21.png>

- Mengggunakan fungsi tukar()
```
void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  var swapped = tukar((1, 2)); // Misalnya
  print(swapped);
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
```
<img src = img4/22.png>


#### Langkah 4
Tambahkan kode program berikut di dalam scope void main(), lalu coba eksekusi (Run) kode Anda.
```
void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  var swapped = tukar((1, 2)); // Misalnya
  print(swapped);

  // Record type annotation in a variable declaration:
  (String, int) mahasiswa;
  print(mahasiswa);
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
```
- Hasil Output :

  <img src = img4/23.png>

  Terjadi error karena variabel mahasiswa belum diinisialisasi dengan nilai.

- Perbaikan Kode Program
Inisialisasi field nama dan NIM Anda pada variabel record mahasiswa di atas.
```
void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  var swapped = tukar((1, 2)); // Misalnya
  print(swapped);

  // Record type annotation in a variable declaration:
  (String, int) mahasiswa  = ('Jihan Karunia Putri', 2241720031);
  print(mahasiswa);
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
```
- Hasil Output :

  <img src = img4/24.png>

#### Langkah 5
Tambahkan kode program berikut di dalam scope void main(), lalu coba eksekusi (Run) kode Anda.
```
(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  var swapped = tukar((1, 2)); // Misalnya
  print(swapped);

  // Record type annotation in a variable declaration:
  (String, int) mahasiswa  = ('Jihan Karunia Putri', 2241720031);
  print(mahasiswa);

  var mahasiswa2 = ('first', a: 2, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}
```
<img src = img4/25.png>

Gantilah salah satu isi record dengan nama dan NIM Anda
```
(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  var swapped = tukar((1, 2)); // Misalnya
  print(swapped);

  // Record type annotation in a variable declaration:
  (String, int) mahasiswa  = ('Jihan Karunia Putri', 2241720031);
  print(mahasiswa);

  var mahasiswa2 = ('first', a: 2, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'

  // Ganti salah satu isi record
  mahasiswa2 = ('Jihan Karunia Putri', a: 2241720031, b: true, 'last');
  print(mahasiswa2);
}
```

<img src = img4/26.png>

## TUUGAS PRAKTIKUM
**1. Silakan selesaikan Praktikum 1 sampai 5, lalu dokumentasikan berupa screenshot hasil pekerjaan Anda beserta penjelasannya!**

**2. Jelaskan yang dimaksud Functions dalam bahasa Dart!**
- Fungsi adalah blok penyusun kode yang dapat dibaca, dipelihara, dan digunakan kembali. Setelah didefinisikan, fungsi dapat dipanggil untuk mengakses kode.

**3. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!**
- *Parameter wajib*: Parameter ini harus disediakan saat fungsi dipanggil, dan diidentifikasi berdasarkan urutan kemunculannya.
    ```
    void greet(String name, int age) {
      print('Hello, $name! You are $age years old.');
    }

    // Memanggil fungsi
    greet('Jihan', 19);  // Output: Hello, Jihan! You are 19 years old.
    ```
  Pada contoh di atas, parameter name dan age harus diberikan, dan urutannya harus sesuai.

- *Parameter opsional*: Parameter ini bersifat opsional dan tidak harus diberikan saat fungsi dipanggil. Jika parameter opsional tidak disediakan, maka nilainya akan null atau menggunakan nilai default (jika ditentukan).
    ```
    void greet([String name = 'User', int age = 0]) {
      print('Hello, $name! You are $age years old.');
    }

    // Memanggil fungsi
    greet();              // Output: Hello, User! You are 0 years old.
    greet('Jihan');      // Output: Hello, Jihan! You are 0 years old.
    greet('Jihan', 19);   // Output: Hello, Jihan! You are 19 years old.
    ```
    
  Di sini, name dan age bersifat opsional dan memiliki nilai default.

- *Parameter bernama*: Parameter ini dapat disebutkan dengan namanya saat fungsi dipanggil, memberikan fleksibilitas dan meningkatkan keterbacaan kode.
      ```
      void describe({required String name, required int age}) {
        print('Name: $name, Age: $age');
      }

      // Memanggil fungsi
      describe(name: 'Jihan', age: 19);  // Output: Name: Jihan, Age: 19
      ```
    Di sini, name dan age adalah named parameters dan harus disertakan saat memanggil fungsi.

**4. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!**
- Dalam pemrograman Dart, fungsi dianggap sebagai "first-class objects," yang berarti fungsi dapat diperlakukan seperti objek lainnya. Ini berarti Anda dapat melakukan hal-hal berikut dengan fungsi:
  1) Menyimpan fungsi dalam variabel: Anda dapat menyimpan fungsi dalam variabel.
  2) Melewatkan fungsi sebagai argumen: Anda dapat mengirimkan fungsi sebagai argumen ke fungsi lain.
  3) Mengembalikan fungsi dari fungsi lain: Anda dapat mengembalikan fungsi dari fungsi lain.

    *Contoh* 
    ```
    // Mendefinisikan fungsi biasa
    int tambah(int a, int b) {
      return a + b;
    }

    // Fungsi yang menerima fungsi sebagai argumen
    void cetakHasil(Function fungsi, int x, int y) {
      int hasil = fungsi(x, y);
      print('Hasil: $hasil');
    }

    void main() {
      // Menyimpan fungsi dalam variabel
      var fungsiTambah = tambah;

      // Menggunakan fungsi sebagai argumen
      cetakHasil(fungsiTambah, 5, 10); // Output: Hasil: 15

      // Mengembalikan fungsi dari fungsi lain
      Function buatFungsiKali(int faktor) {
        return (int x) => x * faktor;
      }

      var kaliDua = buatFungsiKali(2);
      print(kaliDua(5)); // Output: 10
    }
    ```
    *Penjelasan :*
    1. Mendefinisikan Fungsi: Fungsi tambah didefinisikan untuk menjumlahkan dua angka.
    2. Fungsi sebagai Argumen: Fungsi cetakHasil menerima fungsi dan dua angka sebagai argumen. Fungsi ini kemudian memanggil fungsi yang diberikan dan mencetak hasilnya.
    3. Variabel Fungsi: Fungsi tambah disimpan dalam variabel fungsiTambah.
    4. Mengembalikan Fungsi: Fungsi buatFungsiKali mengembalikan fungsi baru yang mengalikan argumen yang diterima dengan faktor yang diberikan.

**5. Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!**
- Anonymous Functions (atau lambda functions atau function literals) adalah fungsi yang tidak memiliki nama. Anonymous functions memudahkan penulisan kode yang lebih ringkas dan langsung, terutama ketika fungsi tersebut digunakan sekali dan tidak memerlukan definisi terpisah. Contoh:

  *Melewati Fungsi Anonim sebagai Argumen*
  ```
  void main() { 
  List < int > numbers = [ 1 , 2 , 3 , 4 , 5 ]; 
  // Menggunakan fungsi anonim dengan forEach
    numbers.forEach((number) { 
      print (number * 2 ); // Mencetak: 2, 4, 6, 8, 10
    }); 
  }
  ```
  
  *Menggunakan Sintaks Panah*
  ```
  void main() { 
    List < int > numbers = [ 1 , 2 , 3 , 4 , 5 ]; 
  // Menggunakan fungsi anonim dengan map, dalam sintaksis panah 
    var doubledNumbers = numbers.map((number) => number * 2 ); 
    print (doubledNumbers.toList()); // Mencetak: [2, 4, 6, 8, 10]
  }
  ```
  
  *Menyimpan Fungsi Anonim dalam Variabel*
  ```
  void main() { 
    // Menyimpan fungsi anonim dalam variabel 
    var greet = ( String name) { 
      return  'Halo, $name !' ; 
    }; 

    print (greet( 'Alice' )); // Mencetak: Halo, Alice!
  }
  ```

  *Menyimpan Fungsi Anonim dalam Variabel*
  ```
  void main() { 
    void performOperation( void  Function () callback) { 
      // Beberapa operasi
      callback(); 
    } 

    performOperation(() => print ( 'Operasi dilakukan' )); // Mencetak: Operasi dilakukan
  }
  ```

**6. Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!**
- *Lexical scope*

  Lexical scope adalah cara pemrograman menentukan visibilitas variabel berdasarkan posisi di dalam kode sumber.
  ```
  void main() {
    var outerVariable = 'Outer';

    void outerFunction() {
      var innerVariable = 'Inner';

      print(outerVariable); // Akses variabel dari scope luar
      print(innerVariable); // Akses variabel dari scope lokal
    }

    outerFunction();

    // print(innerVariable); // Error: innerVariable tidak dapat diakses di sini
  }
  ```
  Pada contoh tersebut, outerVariable dapat diakses di dalam outerFunction karena berada dalam scope yang lebih luas. Sedangkan, innerVariable hanya dapat diakses di dalam outerFunction dan tidak dapat diakses di luar fungsi tersebut.

- *Lexical closures*

  Lexical closures adalah konsep di mana sebuah fungsi dapat mengakses variabel dari lingkungan tempat fungsi tersebut didefinisikan. Dengan kata lain, closure adalah fungsi yang “menutup” variabel dari lingkungannya, sehingga variabel tersebut tetap dapat diakses meskipun fungsi telah selesai dieksekusi.
  ```
  Function makeCounter() {
    var count = 0; // Variabel di luar fungsi anonymous

    // Fungsi anonymous yang memiliki akses ke variabel 'count'
    return () {
      count++;
      return count;
    };
  }

  void main() {
    var counter = makeCounter();

    print(counter()); // Output: 1
    print(counter()); // Output: 2
    print(counter()); // Output: 3
  }
  ```
  Pada contoh tersebut, fungsi yang dikembalikan dari makeCounter adalah sebuah closure. Meskipun fungsi tersebut dieksekusi di luar makeCounter, tetap memiliki akses ke variabel count yang dideklarasikan di dalam makeCounter. Setiap panggilan ke counter() meningkatkan nilai count dan mengembalikannya. Ini menunjukkan bahwa count tetap "terjaga" dalam memori meskipun makeCounter telah selesai dieksekusi.

- Sehingga, lexical scope menjelaskan aturan akses variabel, sementara lexical closures menjelaskan bagaimana fungsi dapat “menutup” variabel dari lingkungannya dan terus mengaksesnya setelah lingkungan tersebut selesai.

**7. Jelaskan dengan contoh cara membuat return multiple value di Functions!**

    **Menggunakan Objek**
    ```
    class Hasil {
      final int jumlah;
      final int selisih;

      Hasil(this.jumlah, this.selisih);
    }

    Hasil hitung(int a, int b) {
      return Hasil(a + b, a - b);
    }

    void main() {
      var hasil = hitung(10, 5);
      print('Jumlah: ${hasil.jumlah}, Selisih: ${hasil.selisih}'); // Output: Jumlah: 15, Selisih: 5
    }
    ```
    *Penjelasan:*
    - Kelas Hasil: Memiliki dua atribut: jumlah dan selisih, yang diinisialisasi melalui konstruktor.
    - Fungsi hitung: Mengambil dua parameter (a dan b), kemudian mengembalikan sebuah objek Hasil dengan nilai jumlah dan selisih.
    - Penggunaan di main: Memanggil hitung dan menyimpan hasilnya dalam variabel hasil. Kemudian kita mencetak jumlah dan selisih menggunakan atribut objek.

    **Menggunakan List**
    ```
    List<int> hitung(int a, int b) {
      return [a + b, a - b];
    }

    void main() {
      var hasil = hitung(10, 5);
      print('Jumlah: ${hasil[0]}, Selisih: ${hasil[1]}'); // Output: Jumlah: 15, Selisih: 5
    }

    ```
    *Penjelasan:*
    - Fungsi hitung: Mengembalikan List yang berisi dua elemen: hasil penjumlahan dan pengurangan.
    - Penggunaan di main: Memanggil fungsi hitung, lalu mencetak hasil dengan mengakses elemen-elemen List menggunakan indeks. hasil[0] untuk jumlah dan hasil[1] untuk selisih.

    **Menggunakan Map**
    ```
    Map<String, int> hitung(int a, int b) {
      return {
        'jumlah': a + b,
        'selisih': a - b,
      };
    }

    void main() {
      var hasil = hitung(10, 5);
      print('Jumlah: ${hasil['jumlah']}, Selisih: ${hasil['selisih']}'); // Output: Jumlah: 15, Selisih: 5
    }
    ```
    *Penjelasan:*
    - Fungsi hitung: Mengembalikan Map yang memiliki dua kunci: 'jumlah' dan 'selisih', masing-masing dengan nilai hasil penjumlahan dan pengurangan.
    - Penggunaan di main: Memanggil hitung dan mencetak hasil menggunakan kunci yang sesuai dalam Map.