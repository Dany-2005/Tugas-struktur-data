import 'dart:io';

// Fungsi rekursif untuk menghasilkan semua kombinasi karakter
void kombinsi(String current, int length, int maxLength, List<String> results) {
  if (length == maxLength) {
    results.add(current); // Simpan hasil dalam list
    return;
  }

  for (var char in ['a', 'b', 'c']) {
    kombinsi(current + char, length + 1, maxLength, results);
  }
}

void main() {
  stdout.write("Jumlah karakter = ");
  int? n = int.tryParse(stdin.readLineSync()!);

  if (n != null && n > 0) {
    List<String> results = [];
    kombinsi("", 0, n, results);
    print(results.join(" ")); // Cetak semua hasil dalam satu baris
  } else {
    print("Input harus angka positif.");
  }
}
