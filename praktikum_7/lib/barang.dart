class Barang {
  late int? id;
  late String namaBarang;
  late String harga;
  late String stok;

  Barang({
    this.id,
    required this.namaBarang,
    required this.harga,
    required this.stok,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nama_barang': namaBarang,
      'harga': harga,
      'stok': stok,
    };
  }

  Barang.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    namaBarang = map['nama_barang'];
    harga = map['harga'];
    stok = map['stok'];
  }
}