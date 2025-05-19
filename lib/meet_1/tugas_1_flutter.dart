import 'package:flutter/material.dart';

class HalamanProfilSederhana extends StatelessWidget {
  const HalamanProfilSederhana({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent, 
        title: Text("Profil Saya"), 
        centerTitle: true, 
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Nama Lengkap : Rumah Makan Padang", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Row(
        children: [
          Icon(Icons.location_on), Text('Nama Kota: Jakarta'),
          Text("Nama Kota"),
          Text("Kelas Mobile Programming"),
          Row(
            children: [
              Text("Gambar 1"),
            ],)
        ],
      ),
    ],
      )
    );
  }
}