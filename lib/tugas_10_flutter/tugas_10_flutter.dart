import 'package:flutter/material.dart';
import 'package:ppkd_b_2/constant/app_color.dart';
import 'package:ppkd_b_2/constant/app_style.dart';
import 'package:ppkd_b_2/helper/preference.dart';
import 'package:ppkd_b_2/tugas_10_flutter/thankspage.dart';

class Tugas10FormulirKelasPendaftaranKelas extends StatefulWidget {
  const Tugas10FormulirKelasPendaftaranKelas({super.key});

  @override
  State<Tugas10FormulirKelasPendaftaranKelas> createState() =>
      _Tugas10FormulirKelasPendaftaranKelasState();
}

class _Tugas10FormulirKelasPendaftaranKelasState
    extends State<Tugas10FormulirKelasPendaftaranKelas> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isFormValid = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulir Pendaftaran Kelas Flutter'),
        centerTitle: true,
        backgroundColor: AppColor.yellow1,
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 18),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 24,
            children: [
              TextFormField(
                controller: _nameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Nama tidak boleh kosong";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  hintText: 'Nama Lengkap',
                  labelText: 'Nama Lengkap',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              TextFormField(
                controller: _emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email tidak boleh kosong";
                  } else if (!value.contains("@")) {
                    return "Email tidak valid";
                  }
                  return null;
                },

                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              TextFormField(
                controller: _phoneController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "No HP tidak boleh kosong";
                  } else if (!value.contains("+62")) {
                    return "No Hp tidak valid";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: '+62...',
                  labelText: 'Nomor HP',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              TextFormField(
                controller: _cityController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Kota Domisili tidak boleh kosong";
                  }
                },
                decoration: InputDecoration(
                  labelText: 'Kota Domisili',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print("Berhasil");

                    dialogSucess(context);
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.yellow1,
                  minimumSize: Size(double.infinity, 40),
                ),
                child: Text(
                  'Daftar',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: AppColor.black22,
                  ),
                ),
                // SizedBox(height: 20),

                //   SizedBox(
                //     width: double.infinity,
                //     child: ElevatedButton(style: ElevatedButton.styleFrom( backgroundColor: AppColor.yellow1,
                //             padding: EdgeInsets.symmetric(vertical: 12),
                //             disabledBackgroundColor: Colors.grey.shade500,),
                //       onPressed: isFormValid? () { showDialog(context: context, builder: (context) {
                //         return AlertDialog(
                //           title: Text('Berhasil'),
                //           content: Column(
                //             mainAxisSize: MainAxisSize.min,
                //             children: [Text('Nama lengkap : ${_nameController.text}',
                //             ), Text('Email : ${_emailController.text}'),
                //             Text('Email : ${_phoneController.text}'),
                //             Text('Email : ${_cityController.text}'),
                //             ]
                //           ),
                //           actions: [
                //             TextButton(onPressed: () {
                //               Navigator.pop(context);
                //             },
                //             child: Text('Tutup'),
                //             ),
                //             TextButton(onPressed: () {
                //               Navigator.push(context, MaterialPageRoute(builder: (context) => Thankspage()));

                //             }, child: Text('Lanjut'))
                //           ],

                //         );
                //       },
                //       );

                //     }
                //     child: Text('Lanjut'))
                //   )
                // ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> dialogSucess(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Berhasil'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Nama lengkap : ${_nameController.text}'),
              Text('Email : ${_emailController.text}'),
              Text('Phone : ${_phoneController.text}'),
              Text('Kota Domisili : ${_cityController.text}'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Tutup'),
            ),
            TextButton(
              onPressed: () {
                PreferenceHandler.saveLogin(true);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => Thankspage(
                          name: _nameController.text,
                          city: _cityController.text,
                        ),
                  ),
                );
              },
              child: Text('Lanjut'),
            ),
          ],
        );
      },
    );
  }
}
