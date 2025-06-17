import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ppkd_b_2/constant/app_color.dart';

class Tugas11WishListBelanja extends StatefulWidget {
  const Tugas11WishListBelanja({super.key});

  @override
  State<Tugas11WishListBelanja> createState() => _Tugas11WishListBelanjaState();
}

class _Tugas11WishListBelanjaState extends State<Tugas11WishListBelanja> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _produkController = TextEditingController();
  final TextEditingController _ulasanController = TextEditingController();
  final TextEditingController ratingController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulir Pendataan Produk Toko'),
        centerTitle: true,
        backgroundColor: AppColor.yellow1,
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 18),
      ),
      
    );
  }
}








