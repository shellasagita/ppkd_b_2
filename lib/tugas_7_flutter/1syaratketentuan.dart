import 'package:flutter/material.dart';

class CheckBoxSyaratKetentuan extends StatefulWidget {
  const CheckBoxSyaratKetentuan({super.key});

  @override
  State<CheckBoxSyaratKetentuan> createState() =>
      _CheckBoxSyaratKetentuanState();
}

bool valueCheck = false;

class _CheckBoxSyaratKetentuanState extends State<CheckBoxSyaratKetentuan> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Saya menyetujui semua persyaratan yang berlaku'),
        Row(
          children: [
            Checkbox(
              value: valueCheck,
              onChanged: (value) {
                setState(() {
                  print('Checkbox acknowledge: $value');
                  valueCheck = value ?? false;
                });
              },
            ),
            Text(
              valueCheck
                  ? 'Lanjutkan pendaftaran diperbolehkan'
                  : 'Anda belum bisa melanjutkan',
            ),
          ],
        ),
      ],
    );
  }
}
