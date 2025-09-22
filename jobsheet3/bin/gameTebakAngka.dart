import 'dart:io';
import 'dart:math';

void main() {
  while (true) {
    print("\n=== Game Tebak Angka ===");
    print("1. Main game");
    print("2. Keluar");
    stdout.write("Pilih menu: ");
    String? pilihan = stdin.readLineSync();

    switch (pilihan) {
      case '1':
        gameTebakAngka();
        break;
      case '2':
        print("Terima kasih sudah bermain!");
        return;
      default:
        print("Pilihan tidak valid, coba lagi!");
    }
  }
}

void gameTebakAngka() {
  int angkaRahasia = Random().nextInt(10) + 1;
  int tebakan;

  do {
    stdout.write("Tebak angka (1-10): ");
    tebakan = int.parse(stdin.readLineSync()!);

    if (tebakan < angkaRahasia) {
      print("Terlalu kecil!");
    } else if (tebakan > angkaRahasia) {
      print("Terlalu besar!");
    } else {
      print("Selamat! Angka benar ($angkaRahasia).");
    }
  } while (tebakan != angkaRahasia);
}
