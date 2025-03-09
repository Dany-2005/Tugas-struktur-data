import 'dart:io';

int binarySearch(List<int> arr, int left, int right, int target) {
  if (left > right) {
    return -1; // Tidak ditemukan
  }

  int mid = (left + right) ~/ 2; // Ambil indeks tengah

  if (arr[mid] == target) {
    return mid; // Jika ditemukan, kembalikan indeksnya
  } else if (arr[mid] > target) {
    return binarySearch(arr, left, mid - 1, target); // Cari di kiri
  } else {
    return binarySearch(arr, mid + 1, right, target); // Cari di kanan
  }
}

void main() {
  stdout.write("Masukkan daftar angka (dipisah dengan koma): ");
  List<int> data = stdin
      .readLineSync()!
      .split(',')
      .where((e) => e.trim().isNotEmpty) // Hapus elemen kosong
      .map((e) => int.parse(e.trim()))   // Konversi ke int
      .toList();

  stdout.write("Masukkan angka yang ingin dicari: ");
  int? target = int.tryParse(stdin.readLineSync()!);

  if (target == null) {
    print("Input tidak valid!");
    return;
  }

  int index = binarySearch(data, 0, data.length - 1, target);

  if (index != -1) {
    print("Data $target berada pada indeks ke - $index");
  } else {
    print("Data $target tidak ditemukan");
  }
}
