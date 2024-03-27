import 'dart:io';
// ignore_for_file: unused_local_variable

void main() {
  // Data Uji 1
  double massaMark1 = 78;
  double tinggiMark1 = 1.69;

  double massaJohn1 = 92;
  double tinggiJohn1 = 1.95;

  // Data Uji 2
  double massaMark2 = 95;
  double tinggiMark2 = 1.88;

  double massaJohn2 = 85;
  double tinggiJohn2 = 1.76;

  //Mark
  stdout.write("Massa badan Mark: ");
  var massa_mark = double.parse(stdin.readLineSync()!);

  stdout.write("Tinggi badan Mark: ");
  var tinggi_mark = double.parse(stdin.readLineSync()!);

  //Perhitungan BMI Mark
  var BMI_mark = (massa_mark / (tinggi_mark * tinggi_mark));

  print("Mark memiliki BMI : ${BMI_mark.toStringAsFixed(2)}");

  //John
  stdout.write("Massa badan John: ");
  var massa_john = double.parse(stdin.readLineSync()!);

  stdout.write("Tinggi badan John: ");
  var tinggi_john = double.parse(stdin.readLineSync()!);

  //Perhitungan BMI John
  var BMI_john = (massa_john / (tinggi_john * tinggi_john));

  print("Mark memiliki BMI : ${BMI_john.toStringAsFixed(2)}");

  // Menentukan apakah Mark memiliki BMI lebih tinggi dari John
  var markHigherBMI = BMI_mark > BMI_john;
  print(
      "Apakah Mark memiliki nilai BMI lebih tinggi dari pada John? $markHigherBMI");
}
