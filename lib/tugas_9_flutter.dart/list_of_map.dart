import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ppkd_b_2/constant/app_color.dart';
import 'package:ppkd_b_2/constant/app_style.dart';

class MapKategoriProduk extends StatefulWidget {
  const MapKategoriProduk({super.key});

  @override
  State<MapKategoriProduk> createState() => _MapKategoriProdukState();
}

class _MapKategoriProdukState extends State<MapKategoriProduk> {
  final List<Map<String, dynamic>> dataiconKategori = [
    {
      'nama': 'Buah-buahan',
      'icon': Icons.shopping_basket_rounded,
      'deskripsi': 'bebas pengawet',
    },
    {
      'nama': 'Sayuran',
      'icon': Icons.local_florist,
      'deskripsi': 'bebas petisida',
    },
    {
      'nama': 'Elektronik',
      'icon': Icons.electric_bolt_sharp,
      'deskripsi': 'terdapat garansi perbaikan',
    },
    {
      'nama': 'Pakaian Pria',
      'icon': Icons.man_3_sharp,
      'deskripsi': 'ramah lingkungan',
    },
    // {'nama': 'Pakaian Wanita'},
    // {'nama': 'Alat Tulis Kantor'},
    // {'nama': 'Buku & Majalah'},
    // {'nama': 'Peralatan Dapur', 'Icon': Icons.blender},
    // {'nama': 'Makanan Ringan'},
    // {'nama': 'Minuman'},
    // {'nama': 'Mainan Anak'},
    // {'nama': 'Peralatan Olahraga'},
    // {'nama': 'Produk Kesehatan'},
    // {'nama': 'Kosmetik'},
    // {'nama': 'Obat-obatan'},
    // {'nama': 'Aksesoris Mobil'},
    // {'nama': 'Perabot Rumah'},
    // {'nama': 'Sepatu & Sandal'},
    // {'nama': 'Barang Bekas'},
    // {'nama': 'Voucher & Tiket'},
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
      body: ListView.builder(
        itemCount: dataiconKategori.length,
        itemBuilder: (BuildContext context, int index) {
          final item = dataiconKategori[index];
          return ListTile(
            leading: Row(
              mainAxisSize:
                  MainAxisSize
                      .min, // important to prevent Row from taking full width
              children: [
                Text('${index + 1}. ', style: AppStyle.fontBold(fontSize: 16)),
                Icon(item['icon'], color: Colors.red),
              ],
            ),
            title: Text(item['nama']),
            subtitle: Text(item['deskripsi'] ?? ''),
            onTap: () {
              if (item.containsKey('route')) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => item['route']),
                );
              }
            },
          );
        },
      ),
    );
  }
}
