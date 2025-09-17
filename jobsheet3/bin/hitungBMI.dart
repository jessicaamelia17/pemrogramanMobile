// bin/main.dart
void main() {
  double tinggiCm = 170;
  double beratKg = 65;

  if (tinggiCm <= 0 || beratKg <= 0) {
    print("Input tidak valid: tinggi dan berat harus lebih dari 0");
    return;
  }

  // Konversi tinggi cm -> m
  double tinggiM = tinggiCm / 100;

  // Hitung BMI
  double bmi = beratKg / (tinggiM * tinggiM);

  // Tentukan kategori
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

  print("Tinggi: $tinggiCm cm, Berat: $beratKg kg");
  print("BMI: ${bmi.toStringAsFixed(2)} ($kategori)");
}
