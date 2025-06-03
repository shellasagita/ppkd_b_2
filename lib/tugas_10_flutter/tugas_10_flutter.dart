import 'package:flutter/material.dart';
import 'package:ppkd_b_2/constant/app_color.dart';

class FormulirKelasPendaftaranKelas extends StatefulWidget {
  const FormulirKelasPendaftaranKelas({super.key});

  @override
  State<FormulirKelasPendaftaranKelas> createState() =>
      _FormulirKelasPendaftaranKelasState();
}

class _FormulirKelasPendaftaranKelasState
    extends State<FormulirKelasPendaftaranKelas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulir Pendaftaran Kelas Flutter'),
        centerTitle: true,
        backgroundColor: AppColor.yellow1,
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 18),
      ),
      body: Column(
        children: [
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Nama tidak boleh kosong";
              }
              decoration:
              InputDecoration(
                labelText: 'Nama Lengkap',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              );
            },
          ),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Nama tidak boleh kosong";
              }
              decoration:
              InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              );
            },
          ),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Nomor Hp tidak boleh kosong";
              }
              decoration:
              InputDecoration(
                hintText: '+628123456789',
                labelText: 'Nomor HP',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              );
            },
          ),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Kota Domisili tidak boleh kosong";
              }
              decoration:
              InputDecoration(
                labelText: 'Kota Domisili',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
