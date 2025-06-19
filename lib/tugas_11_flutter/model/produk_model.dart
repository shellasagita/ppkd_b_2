class ProdukModel {
  final int? id;
  final String namaPengguna;
  final String namaProduk;
  final String ulasan;
  final String asalKota;
  final String rating;

  ProdukModel({
    this.id,
    required this.namaPengguna,
    required this.namaProduk,
    required this.ulasan,
    required this.asalKota,
    required this.rating,
  });

  Map<String, dynamic> toMap() => {
    'id': id,
    'nama_pengguna': namaPengguna,
    'nama_produk': namaProduk,
    'ulasan': ulasan,
    'asal_kota': asalKota,
    'rating': rating,
  };

  factory ProdukModel.fromMap(Map<String, dynamic> map) => ProdukModel(
    id: map['id'],
    namaPengguna: map['nama_pengguna'],
    namaProduk: map['nama_produk'],
    ulasan: map['ulasan'],
    asalKota: map['asal_kota'],
    rating: map['rating'],
  );
}
