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
      'icon': Icons.local_grocery_store_outlined,
      'deskripsi': 'bebas petisida',
    },
    {
      'nama': 'Elektronik',
      'icon': Icons.electric_bolt_sharp,
      'deskripsi': 'terdapat garansi perbaikan',
    },
    {
      'nama': 'Pakaian Pria',
      'icon': Icons.add_shopping_cart_sharp,
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
          return ListTile(
            leading: Text(
              '${index + 1}',
              style: AppStyle.fontBold(fontSize: 16),
            ),
            title: Text("${dataiconKategori[index]["nama"]}"),
            subtitle: Text("${dataiconKategori[index]["deskripsi"]}"),
            trailing: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => dataiconKategori[index]["route"],
                  ),
                );
              },
              icon: Icon(dataiconKategori[index]["icon"], color: Colors.red),
            ),
          );
        },
      ),
    );
  }
}
