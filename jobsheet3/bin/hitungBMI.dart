// bin/main.dart
void main() {
  double tinggiCm = 170;
  double beratKg = 65;

  if (tinggiCm <= 0 || beratKg <= 0) {
    print("Input tidak valid: tinggi dan berat harus lebih dari 0");
  } else {
    print("Input valid. Tinggi: $tinggiCm cm, Berat: $beratKg kg");
  }
}
