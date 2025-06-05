class Siswa {
  final int? id;
  final String nama;
  final int umur;

  Siswa({this.id, required this.nama, required this.umur});
  Map<String, dynamic> toMap() {
    return {'id': id, 'nama': nama, 'umur': umur};
  }

  factory Siswa.fromMap(Map<String, dynamic> map) {
    return Siswa(id: map['id'], nama: map['nama'], umur: map['umur']);
  }
}
