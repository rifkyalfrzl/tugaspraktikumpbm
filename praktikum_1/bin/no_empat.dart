import 'dart:io';

void main(List<String> arguments) {
  stdout.write("Masukan IPK = ");
  double ipk = double.tryParse(stdin.readLineSync());
  String hasil;
  stdout.write("Banyak mata kuliah mengulang (Tidak ada = 0) = ");
  int mengulang = int.tryParse(stdin.readLineSync());
  hasil = (ipk >= 3.5 && mengulang == 0) ? "Cumlaude" : 'Tidak Cumlaude';
  // print("IPK: $ipk");
  // print("Banyak mata kuliah mengulang: $mengulang");
  print("Predikat: $hasil");
}
