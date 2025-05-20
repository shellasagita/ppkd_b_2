import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HalamanProfilSederhana extends StatelessWidget {
  const HalamanProfilSederhana({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text("Profil Saya"),
        titleTextStyle: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        centerTitle: true,
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Nama: Andi Rahmat ', style: TextStyle(fontSize: 25)),
          Row(children: [Icon(Icons.location_on), Text('Nama Kota: Jakarta')]),
          Text('Seorang pelajar yang sedang belajar Flutter'),
        ],
      ),
    );
  }
}
