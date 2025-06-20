import 'package:flutter/material.dart';
import 'package:ppkd_b_2/constant/app_color.dart';

class ListKategoriToko extends StatefulWidget {
  const ListKategoriToko({super.key});

  @override
  State<ListKategoriToko> createState() => _ListKategoriTokoState();
}

class _ListKategoriTokoState extends State<ListKategoriToko> {
  final List<String> namaKategori = [
    'Buah-buahan',
    'Sayuran',
    'Elektronik',
    'Pakaian Pria',
    'Pakaian Wanita',
    'Alat Tulis Kantor',
    'Buku & Majalah',
    'Peralatan Dapur',
    'Makanan Ringan',
    'Minuman',
    'Mainan Anak',
    'Peralatan Olahraga',
    'Produk Kesehatan',
    'Kosmetik',
    'Obat-obatan',
    'Aksesoris Mobil',
    'Perabot Rumah',
    'Sepatu & Sandal',
    'Barang Bekas',
    'Voucher & Tiket',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kantong Ajaib Store'),
        centerTitle: true,
        backgroundColor: AppColor.blue3,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 18),
      ),
      backgroundColor: AppColor.blue4,
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(8.0),
              itemCount: namaKategori.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(
                    '${index + 1} ${namaKategori[index]}',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
