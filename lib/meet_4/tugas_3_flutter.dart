import 'package:flutter/material.dart';

class Tugas3FormulirGaleri extends StatelessWidget {
  const Tugas3FormulirGaleri({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff205781),
        centerTitle: true,
        title: Text('Formulir Pengguna', style: TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(height: 12),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Nama",
                  hintText: "Masukan Nama",
                  hintStyle: TextStyle(fontSize: 12, color: Colors.black),
                  filled: true,
                  fillColor: Color(0xff98D2C0),
                  prefixIcon: Icon(Icons.account_box_rounded),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.black, width: 5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "Masukan Email",
                  hintStyle: TextStyle(fontSize: 12, color: Colors.black),
                  filled: true,
                  fillColor: Color(0xff98D2C0),
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.black, width: 5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "No. Hp",
                  hintText: "Masukan No. Handphone",
                  hintStyle: TextStyle(fontSize: 12, color: Colors.black),
                  filled: true,
                  fillColor: Color(0xff98D2C0),
                  prefixIcon: Icon(Icons.call),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.black, width: 5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                maxLines: 4,
                decoration: InputDecoration(
                  labelText: "Deskripsi",
                  hintText: "Masukan Deskripsi",
                  hintStyle: TextStyle(fontSize: 12, color: Colors.black),
                  filled: true,
                  fillColor: Color(0xff98D2C0),
                  prefixIcon: Icon(Icons.description),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.black, width: 5),
                  ),
                ),
              ),
            ),
            SizedBox(height: 12),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Galeri Gambar',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 12),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Color(0x904F959D),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(),
                  ),
                  child: Text(
                    'Gambar 1',
                    textAlign: TextAlign.center,
                    selectionColor: Colors.white,
                  ),
                ),
                // Text('Gambar ${Stack}', style: TextStyle(color: Colors.white, fontSize: 12,fontWeight: FontWeight.bold)),
                /// Gambar 2
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffF6F8D5),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(),
                  ),
                  child: Text(
                    'Gambar 2',
                    textAlign: TextAlign.center,
                    selectionColor: Colors.white,
                  ),
                ),
                // Gambar 3
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xff98D2C0),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(),
                  ),
                  child: Text(
                    'Gambar 3',
                    textAlign: TextAlign.center,
                    selectionColor: Colors.white,
                  ),
                ),

                /// Gambar 4
                Container(
                  decoration: BoxDecoration(
                    color: Color(0x904F959D),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(),
                  ),
                  child: Text(
                    'Gambar 4',
                    textAlign: TextAlign.center,
                    selectionColor: Colors.white,
                  ),
                ),
                //Gambar 5
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffF6F8D5),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(),
                  ),
                  child: Text(
                    'Gambar 5',
                    textAlign: TextAlign.center,
                    selectionColor: Colors.white,
                  ),
                ),

                /// Gambar 6
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xff98D2C0),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(),
                  ),
                  child: Text(
                    'Gambar 6',
                    textAlign: TextAlign.center,
                    selectionColor: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
