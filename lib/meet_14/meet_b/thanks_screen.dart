import 'package:flutter/material.dart';
import 'package:ppkd_b_2/constant/app_style.dart';

class HalamanTerimakasih extends StatelessWidget {
  const HalamanTerimakasih({super.key, required this.email});
  final String email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Terimakasih")),
      body: Center(
        child: Text(
          "Terimakasih sudah mengisi form $email",

          style: AppStyle.fontBold(),
        ),
      ),
    );
  }
}
