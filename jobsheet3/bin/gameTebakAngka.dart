import 'dart:io';

void main() {
  while (true) {
    print("\n=== Game Tebak Angka ===");
    print("1. Main game");
    print("2. Keluar");
    stdout.write("Pilih menu: ");
    String? pilihan = stdin.readLineSync();

    switch (pilihan) {
      case '1':
        print("Game Tebak Angka (belum diimplementasi)");
        break;
      case '2':
        print("Terima kasih sudah bermain!");
        return;
      default:
        print("Pilihan tidak valid, coba lagi!");
    }
  }
}
