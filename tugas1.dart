import 'dart:io';

void main() {
  // Data 1 Skor Lumba-lumba dan Koala
  List<int> lumbaLumbaSkor = [96, 108, 89];
  List<int> koalaSkor = [88, 91, 110];

  // Data 2 Skor Lumba-lumba dan Koala
  lumbaLumbaSkor = [97, 112, 101];
  koalaSkor = [109, 95, 106];

  // Input Skor Lumba-lumba
  stdout.write("Skor Lumba-lumba pertama : ");
  var lumba_lumba_pertama = int.parse(stdin.readLineSync()!);

  stdout.write("Skor Lumba-lumba kedua : ");
  var lumba_lumba_kedua = int.parse(stdin.readLineSync()!);

  stdout.write("Skor Lumba-lumba ketiga : ");
  var lumba_lumba_ketiga = int.parse(stdin.readLineSync()!);

  // Data Skor Lumba-lumba
  lumbaLumbaSkor = [lumba_lumba_pertama, lumba_lumba_kedua, lumba_lumba_ketiga];

  // Input Skor Koala
  stdout.write("Skor Koala pertama : ");
  var koala_pertama = int.parse(stdin.readLineSync()!);

  stdout.write("Skor Koala kedua : ");
  var koala_kedua = int.parse(stdin.readLineSync()!);

  stdout.write("Skor Koala pertama ketiga : ");
  var koala_ketiga = int.parse(stdin.readLineSync()!);

  // Data Skor Koala
  koalaSkor = [koala_pertama, koala_kedua, koala_ketiga];

  // Menghitung Skor Rata-rata Setiap Tim
  double rataRataLumbaLumba = menghitung_ratarata(lumbaLumbaSkor);
  double rataRataKoala = menghitung_ratarata(koalaSkor);

  // Hasil
  print(
      "Skor rata-rata Tim Lumba-lumba: ${rataRataLumbaLumba.toStringAsFixed(2)}");
  print("Skor rata-rata Tim Koala: ${rataRataKoala.toStringAsFixed(2)}");
  print(menentukan_pemenang(rataRataLumbaLumba, rataRataKoala));
}

// Menghitung Rata-rata Skor
double menghitung_ratarata(List<int> skors) {
  double total = 0;
  for (int skor in skors) {
    total += skor;
  }
  return total / skors.length;
}

// Perhitungan Pemenang
String menentukan_pemenang(double lumbaLumba, double koala) {
  if (lumbaLumba > koala && lumbaLumba >= 100) {
    return "Selamat! 'Tim Lumba-lumba Memenangkan Kompetisi!";
  } else if (koala > lumbaLumba && koala >= 100) {
    return "Selamat! 'Tim Koala Memenangkan Kompetisi!";
  } else if (lumbaLumba == koala && lumbaLumba >= 100) {
    return "Hasil Seri!";
  } else {
    return "Tidak ada pemenang, skor rata-rata di bawah 100 poin.";
  }
}
