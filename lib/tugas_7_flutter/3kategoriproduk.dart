import 'package:flutter/material.dart';

class DropDownKategoriProduk extends StatefulWidget {
  const DropDownKategoriProduk({super.key});

  @override
  State<DropDownKategoriProduk> createState() => _MyWidgetState();
}

String? isSelected;
final List<String> kategoriproduk = [
  "Elektronik",
  "Pakaian",
  "Makanan",
  "Furniture",
];

class _MyWidgetState extends State<DropDownKategoriProduk> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButton<String>(
          value: isSelected,
          hint: Text('Pilih Kategori Produk'),
          items:
              kategoriproduk.map((String value) {
                return DropdownMenuItem(value: value, child: Text(value));
              }).toList(),
          onChanged: (String? value) {
            setState(() {
              isSelected = value;
            });
          },
        ),
        Row(
          children: [
            Text('Anda memilih kategori:'), Text(isSelected ?? '-'),
            // Text('$isSelected')],
          ],
        ),
      ],
    );
  }
}
