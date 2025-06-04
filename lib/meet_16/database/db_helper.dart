// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';

// class DbHelper {
//   static Future<Database> initDB() async {
//     final dbPath = await getDatabasesPath();
//     return openDatabase(
//       join(dbPath, 'ppkd_b_2.db'),
//       onCreate: (db, version) {
//         return db.execute(
//           'CREATE TABLE users(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, username TEXT, email TEXT, phone TEXT, password TEXT)',
//         );
//       },
//     );
//   }
// }
