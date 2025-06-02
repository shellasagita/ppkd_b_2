import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ppkd_b_2/constant/app_color.dart';
import 'package:ppkd_b_2/tugas_9_flutter.dart/list.dart';
import 'package:ppkd_b_2/tugas_9_flutter.dart/list_of_map.dart';

class Tugas9ListKategoriProduk extends StatefulWidget {
  const Tugas9ListKategoriProduk({super.key});

  @override
  State<Tugas9ListKategoriProduk> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Tugas9ListKategoriProduk> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kantong Ajaib Store'),
        centerTitle: true,
        backgroundColor: AppColor.blue3,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 18),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListKategoriToko()),
                );
              },
              child: Text('List Kategori Produk'),
            ),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MapKategoriProduk()),
                );
              },
              child: Text('Map Icon & Deskripsi'),
            ),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {},
              child: Text('Model Berdasarkan Nama'),
            ),
          ],
        ),
      ),
    );
  }
}
