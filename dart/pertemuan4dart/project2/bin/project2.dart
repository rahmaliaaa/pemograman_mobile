import 'dart:io';

import 'package:project2/project2.dart' as project2;

void main(List<String> arguments) {
  //print('Hello world: ${project2.calculate()}!');

  //dynamic fl = List<int>.filled(4, 0);
  //fl[0] = 1;
  //fl[1] = 2;
  //fl[2] = 3;
  //fl[3] = 4;
  //fl[4] = 5;

  //var gl = [1, 2, 3, 4];
  //gl.add(4);
  //gl.remove(1);
  //cetak
  //stdout.writeln(gl);

  // var setnilai1 = <int> {1, 2, 3, 4};
  // var setnilai2 = {3,3, 4, 5};
  // print(setnilai2);
  // print(setnilai1.union(setnilai2));
  // print(setnilai1.intersection(setnilai2));

  //percobaan kedua
  // var setNilai1 = <int>[];
  // var setNilai2 = <int>[1, 2, 3];

  // stdout.writeln('Jumlah data setNilai1: ');
  // String? input1 = stdin.readLineSync();
  // int jumlah1 = int.tryParse(input1 ?? "") ?? 0;

  // for (var i = 0; i < jumlah1; i++) {
  //   stdout.writeln('Masukkan nilai ke ${i + 1} = ');
  //   String? inputNilai = stdin.readLineSync();
  //   int nilai = int.tryParse(inputNilai ?? "") ?? 0;
  //   setNilai1.add(nilai);
  // }
  // var NilaiList = setNilai1.toList();
  // print(NilaiList[1]);

  //print(setNilai1); //peretemua
  var sudah = {"NIM": "180", "nama": "andi", "umur": 20};
  print(sudah);
  print(sudah['nama']);
  var opo ={
    'nim': ["101", "404"], 
    'nama': ["andi", "budi"], 
    'umur': [20, 21]};
  print(opo);
  print(opo['nama']![1]);
}