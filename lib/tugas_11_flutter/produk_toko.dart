// import 'package:flutter/material.dart';
// import 'package:ppkd_b_2/tugas_11_flutter/database/db_produk_helper.dart';
// import 'package:ppkd_b_2/model/produk_model.dart';

// class Tugas11WishListBelanja extends StatefulWidget {
//   const Tugas11WishListBelanja({super.key});

//   @override
//   State<Tugas11WishListBelanja> createState() => _Tugas11WishListBelanjaState();
// }

// class _Tugas11WishListBelanjaState extends State<Tugas11WishListBelanja> {
//   final _formKey = GlobalKey<FormState>();
//   final _namaController = TextEditingController();
//   final _produkController = TextEditingController();
//   final _ulasanController = TextEditingController();
//   final _asalController = TextEditingController();
//   final _ratingController = TextEditingController();

//   List<ProdukModel> _produkList = [];

//   @override
//   void initState() {
//     super.initState();
//     _loadData();
//   }

//   Future<void> _loadData() async {
//     _produkList = await DbProdukHelper.getAllProduk();
//     setState(() {});
//   }

//   void _submitForm() async {
//     if (_formKey.currentState!.validate()) {
//       final newProduk = ProdukModel(
//         namaPengguna: _namaController.text,
//         namaProduk: _produkController.text,
//         ulasan: _ulasanController.text,
//         asalKota: _asalController.text,
//         rating: _ratingController.text,
//       );

//       await DbProdukHelper.insertProduk(newProduk);
//       _clearForm();
//       _loadData();
//     }
//   }

//   void _clearForm() {
//     _namaController.clear();
//     _produkController.clear();
//     _ulasanController.clear();
//     _asalController.clear();
//     _ratingController.clear();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Pendataan Produk Toko'),
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.all(16),
//           child: Column(
//             children: [
//               Form(
//                 key: _formKey,
//                 child: Column(
//                   children: [
//                     _buildTextField(_namaController, 'Nama Pengguna'),
//                     _buildTextField(_produkController, 'Nama Produk'),
//                     _buildTextField(_ulasanController, 'Ulasan'),
//                     _buildTextField(_asalController, 'Asal Kota'),
//                     _buildTextField(_ratingController, 'Rating'),
//                     SizedBox(height: 16),
//                     ElevatedButton(
//                       onPressed: _submitForm,
//                       child: Text('Simpan'),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 20),
//               Divider(),
//               Text('Daftar Produk Terdaftar'),
//               SizedBox(height: 10),
//               ..._produkList.map((produk) => ListTile(
//                     title: Text(produk.namaProduk),
//                     subtitle: Text('Oleh ${produk.namaPengguna} - ${produk.rating}/5'),
//                   )),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildTextField(TextEditingController controller, String label) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 4),
//       child: TextFormField(
//         controller: controller,
//         decoration: InputDecoration(labelText: label),
//         validator: (value) => value == null || value.isEmpty ? '$label wajib diisi' : null,
//       ),
//     );
//   }
// }
