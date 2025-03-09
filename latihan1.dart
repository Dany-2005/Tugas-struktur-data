import 'dart:io';

// Fungsi rekursif untuk menghitung nilai di segitiga Pascal
int pascal(int row, int col) {
  if (col == 0 || col == row) {
    return 1;
  }
  return pascal(row - 1, col - 1) + pascal(row - 1, col);
}

// Fungsi untuk mencetak Segitiga Pascal
void PascalTriangle(int n) {
  for (int i = 0; i < n; i++) {
    List<int> row = [];
    for (int j = 0; j <= i; j++) {
      row.add(pascal(i, j));
    }
    print(row.join(" "));
  }
}

void main() {
  stdout.write("Masukkan jumlah baris: ");
  int? n = int.tryParse(stdin.readLineSync()!);
  if (n != null && n > 0) {
    PascalTriangle(n);
  } else {
    print("Input harus berupa angka positif.");
  }
}
