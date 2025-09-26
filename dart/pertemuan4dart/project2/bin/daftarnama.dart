void main() {
  // Growable List (tanpa panjang tetap)
  List<String> mahasiswa = [];

  // Tambah data mahasiswa
  mahasiswa.add("Alya");
  mahasiswa.add("Belqis");
  mahasiswa.add("Vita");
  mahasiswa.add("Lia");

  // Tampilkan daftar mahasiswa
  print("Daftar Mahasiswa:");
  for (var mhs in mahasiswa) {
    print("- $mhs");
  }

  // Tampilkan jumlah data
  print("Jumlah Mahasiswa: ${mahasiswa.length}");
}