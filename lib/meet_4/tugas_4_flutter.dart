import 'package:flutter/material.dart';

class Tugas4DaftarProduk extends StatelessWidget {
  const Tugas4DaftarProduk({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFF76CE),
        title: Text("Travelpedia"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(height: 12),
          Center(
            child: Text(
              "Formulir Pengguna",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),

          Container(height: 12),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Nama",
                hintText: "Masukan Nama",
                hintStyle: TextStyle(fontSize: 12, color: Colors.black),
                filled: true,
                fillColor: Color(0xffFDFFC2),
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
                fillColor: Color(0xff94FFD8),
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
                fillColor: Color(0xffA3D8FF),
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
          Card(
            child: ListTile(
              leading: Icon(Icons.image),
              title: Text('Open Trip Mangrove Pantai Kapuk'),
              subtitle: Text('"Rp. 100.000"'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.image),
              title: Text('Open Trip Pulau Seribu Pramuka'),
              subtitle: Text('"Rp. 100.000"'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.image),
              title: Text('Open Trip Pulau Seribu Harapan'),
              subtitle: Text('"Rp. 100.000"'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.image),
              title: Text('Open Trip Pulau Seribu Bidadari'),
              subtitle: Text('"Rp. 100.000"'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.image),
              title: Text('Open Trip Pulau Seribu Tidung'),
              subtitle: Text('"Rp. 100.000"'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.image),
              title: Text('Open Trip Pulau Seribu Onrush'),
              subtitle: Text('"Rp. 100.000"'),
            ),
          ),
        ],
      ),
    );
  }
}
