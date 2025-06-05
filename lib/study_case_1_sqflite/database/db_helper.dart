import 'package:path/path.dart';
import 'package:ppkd_b_2/study_case_1_sqflite/model/pendataan%20_siswa.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

class DBHelper1 {
  static Future<Database> db() async {
    final dbPath = await getDatabasesPath();
    return openDatabase(
      join(dbPath, 'siswa.db'),
      onCreate: (db, version) {
        return db.execute(
          '''CREATE TABLE siswa(id INTEGER PRIMARY KEY AUTOINCREMENT, nama TEXT, umur INTEGER)''',
        );
      },
      version: 1,
    );
  }

  static Future<void> insertSiswa(Siswa siswa) async {
    final db = await DBHelper1.db();
    await db.insert(
      'siswa',
      siswa.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<List<Siswa>> getAllSiswa() async {
    final db = await DBHelper1.db();
    final List<Map<String, dynamic>> maps = await db.query('siswa');

    return List.generate(maps.length, (i) => Siswa.fromMap(maps[i]));
  }
}
