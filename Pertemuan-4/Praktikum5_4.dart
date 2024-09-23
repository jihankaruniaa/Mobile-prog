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