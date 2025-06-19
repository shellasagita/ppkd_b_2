// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';
// import '../model/produk_model.dart';

// class DbProdukHelper {
//   static Future<Database> initDB() async {
//     final path = await getDatabasesPath();
//     return openDatabase(
//       join(path, 'produk_toko.db'),
//       onCreate: (db, version) {
//         return db.execute('''
//           CREATE TABLE produk(
//             id INTEGER PRIMARY KEY AUTOINCREMENT,
//             nama_pengguna TEXT,
//             nama_produk TEXT,
//             ulasan TEXT,
//             asal_kota TEXT,
//             rating TEXT
//           )
//         ''');
//       },
//       version: 1,
//     );
//   }

//   static Future<void> insertProduk(ProdukModel data) async {
//     final db = await initDB();
//     await db.insert('produk', data.toMap());
//   }

//   static Future<List<ProdukModel>> getAllProduk() async {
//     final db = await initDB();
//     final List<Map<String, dynamic>> maps = await db.query('produk');
//     return List.generate(maps.length, (i) => ProdukModel.fromMap(maps[i]));
//   }
// }
