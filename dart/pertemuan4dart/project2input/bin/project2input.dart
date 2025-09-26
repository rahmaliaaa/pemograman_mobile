import 'package:project2input/project2input.dart' as project2input;

import 'dart:io';

void main() {
  var setNilai1 = <int>[];
  var setNilai2 = <int>[1, 2, 3];

  stdout.writeln('Jumlah data setNilai1: ');
  String? input1 = stdin.readLineSync();
  int jumlah1 = int.tryParse(input1 ?? "") ?? 0;

  for (var i = 0; i < jumlah1; i++) {
    stdout.writeln('Masukkan nilai ke ${i + 1} = ');
    String? inputNilai = stdin.readLineSync();
    int nilai = int.tryParse(inputNilai ?? "") ?? 0;
    setNilai1.add(nilai);
  }

  print(setNilai1);
}