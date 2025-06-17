import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ppkd_b_2/meet_16_shella/database/db_helper.dart';
import 'package:ppkd_b_2/study_case_1_sqflite/database/db_helper.dart';
import 'package:ppkd_b_2/study_case_1_sqflite/model/pendataan%20_siswa.dart';

class SiswaApp extends StatefulWidget {
  const SiswaApp({super.key});
  static const String id = '/siswa_app';

  @override
  _SiswaAppState createState() => _SiswaAppState();
}

class _SiswaAppState extends State<SiswaApp> {
  final TextEditingController namaController = TextEditingController();
  final TextEditingController umurController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  List<Siswa> daftarSiswa = [];

  @override
  void initState() {
    super.initState();
    muatData();
  }

  Future<void> muatData() async {
    final data = await DBHelper1.getAllSiswa();
    setState(() {
      daftarSiswa = data;
    });
  }

  Future<void> simpanData() async {
    final nama = namaController.text;
    final umur = int.tryParse(umurController.text) ?? 0;

    if (nama.isNotEmpty && umur > 0) {
      await DBHelper1.insertSiswa(Siswa(nama: nama, umur: umur));
      namaController.clear();
      umurController.clear();
      muatData();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pendaftaran Siswa')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: namaController,
                decoration: const InputDecoration(labelText: 'Nama'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nama wajib diisi';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: umurController,
                decoration: const InputDecoration(labelText: 'Umur'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Umur wajib diisi';
                  }
                  if (int.tryParse(value) == null || int.parse(value) <= 0) {
                    return 'Masukkan umur yang valid';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: simpanData,
                child: const Text('Simpan'),
              ),
              const Divider(height: 32),
              Expanded(
                child: ListView.builder(
                  itemCount: daftarSiswa.length,
                  itemBuilder: (context, index) {
                    final siswa = daftarSiswa[index];
                    return ListTile(
                      leading: CircleAvatar(child: Text('${siswa.id}')),
                      title: Text(siswa.nama),
                      subtitle: Text('Umur: ${siswa.umur}'),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
