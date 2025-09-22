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
/// Pemain memiliki maksimal 5 kesempatan untuk menebak.
void gameTebakAngka() {
  // Meminta user memasukkan batas angka maksimal
  stdout.write("Masukkan batas angka (contoh 10, 50, 100): ");
  int maxRange = int.parse(stdin.readLineSync()!);

  // Menghasilkan angka rahasia secara acak antara 1 hingga maxRange
  int angkaRahasia = Random().nextInt(maxRange) + 1;
  int tebakan;
  int percobaan = 0;
  int maxPercobaan = 5;

  print("\nSaya sudah memilih angka 1–$maxRange.");
  print("Kamu punya $maxPercobaan kesempatan untuk menebak!");

  // Loop hingga user menebak angka dengan benar atau kesempatan habis
  do {
    stdout.write("Tebakan kamu: ");
    tebakan = int.parse(stdin.readLineSync()!);
    percobaan++;

    if (tebakan < angkaRahasia) {
      print("Terlalu kecil!"); // Jika tebakan terlalu kecil
    } else if (tebakan > angkaRahasia) {
      print("Terlalu besar!"); // Jika tebakan terlalu besar
    } else {
      print(
        "🎉 Selamat! Angka benar ($angkaRahasia) dalam $percobaan percobaan.",
      ); // Jika tebakan benar
      return;
    }
  } while (percobaan < maxPercobaan);

  // Jika kesempatan habis
  print("😢 Kesempatan habis! Angka yang benar adalah $angkaRahasia.");
}
