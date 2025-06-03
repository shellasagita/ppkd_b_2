import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class SepatuModel {
  final String namaProduk;
  final String deskripsi;
  final String gambar;
  SepatuModel({
    required this.namaProduk,
    required this.deskripsi,
    required this.gambar,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namaProduk': namaProduk,
      'deskripsi': deskripsi,
      'gambar': gambar,
    };
  }

  factory SepatuModel.fromMap(Map<String, dynamic> map) {
    return SepatuModel(
      namaProduk: map['namaProduk'] as String,
      deskripsi: map['deskripsi'] as String,
      gambar: map['gambar'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory SepatuModel.fromJson(String source) =>
      SepatuModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
