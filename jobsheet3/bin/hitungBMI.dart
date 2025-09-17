// bin/main.dart
void main() {
  List<Map<String, dynamic>> riwayat = [];

  // Simulasi input & perhitungan BMI
  hitungBMI(170, 65, riwayat);
  hitungBMI(165, 75, riwayat);
  hitungBMI(180, 85, riwayat);

  // Tampilkan riwayat
  tampilkanRiwayat(riwayat);
}

void hitungBMI(
  double tinggiCm,
  double beratKg,
  List<Map<String, dynamic>> riwayat,
) {
  if (tinggiCm <= 0 || beratKg <= 0) {
    print("Input tidak valid: tinggi dan berat harus lebih dari 0");
    return;
  }

  double tinggiM = tinggiCm / 100;
  double bmi = beratKg / (tinggiM * tinggiM);

  String kategori;
  if (bmi < 18.5) {
    kategori = "Kurus";
  } else if (bmi < 25) {
    kategori = "Normal";
  } else if (bmi < 30) {
    kategori = "Gemuk";
  } else {
    kategori = "Obesitas";
  }

  riwayat.add({
    'tinggi': tinggiCm,
    'berat': beratKg,
    'bmi': bmi,
    'kategori': kategori,
  });
}

void tampilkanRiwayat(List<Map<String, dynamic>> riwayat) {
  for (var data in riwayat) {
    print(
      "Tinggi: ${data['tinggi']} cm, "
      "Berat: ${data['berat']} kg, "
      "BMI: ${data['bmi'].toStringAsFixed(2)}, "
      "Kategori: ${data['kategori']}",
    );
  }
}
