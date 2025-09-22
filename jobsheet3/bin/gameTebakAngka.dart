import 'dart:io';
import 'dart:math';

/// Fungsi utama yang menjalankan program.
/// Menampilkan menu utama dan menangani pilihan user.
void main() {
  while (true) {
    print("\n=== Game Tebak Angka ===");
    print("1. Main game");
    print("2. Keluar");
    stdout.write("Pilih menu: ");
    String? pilihan = stdin.readLineSync();

    switch (pilihan) {
      case '1':
        gameTebakAngka(); // Memulai permainan tebak angka
        break;
      case '2':
        print("Terima kasih sudah bermain!");
        return; // Keluar dari program
      default:
        print("Pilihan tidak valid, coba lagi!");
    }
  }
}

/// Fungsi untuk menjalankan permainan tebak angka.
/// User diminta memasukkan batas angka, lalu menebak angka rahasia.
void gameTebakAngka() {
  // Meminta user memasukkan batas angka maksimal
  stdout.write("Masukkan batas angka (contoh 10, 50, 100): ");
  int maxRange = int.parse(stdin.readLineSync()!);

  // Menghasilkan angka rahasia secara acak antara 1 hingga maxRange
  int angkaRahasia = Random().nextInt(maxRange) + 1;
  int tebakan;

  // Loop hingga user menebak angka dengan benar
  do {
    stdout.write("Tebak angka (1-$maxRange): ");
    tebakan = int.parse(stdin.readLineSync()!);

    if (tebakan < angkaRahasia) {
      print("Terlalu kecil!"); // Jika tebakan terlalu kecil
    } else if (tebakan > angkaRahasia) {
      print("Terlalu besar!"); // Jika tebakan terlalu besar
    } else {
      print("Selamat! Angka benar ($angkaRahasia)."); // Jika tebakan benar
    }
  } while (tebakan != angkaRahasia);
}
