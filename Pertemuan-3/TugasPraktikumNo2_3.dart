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
