// ignore_for_file: unused_field

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'barang.dart';

class DatabaseHelper {
  static DatabaseHelper? _databaseHelper;

  DatabaseHelper._internal() {
    _databaseHelper = this;
  }

  factory DatabaseHelper() => _databaseHelper ?? DatabaseHelper._internal();

  static late Database _database;

  Future<Database> get database async {
    return _database = await _initializeDb();
  }

  static const String _tableName = 'barangs';

  Future<Database> _initializeDb() async {
    var path = await getDatabasesPath();
    var db = openDatabase(
      join(path, 'waroengku_db.db'),
      onCreate: (db, version) async {
        await db.execute(
            '''CREATE TABLE $_tableName (id INTEGER PRIMARY KEY, nama_barang TEXT, harga TEXT, stok TEXT)''');
      },
      version: 1,
    );
    return db;
  }

  Future<void> insertBarang(Barang barang) async {
    final Database db = await database;
    await db.insert(
      _tableName,
      barang.toMap(),
    );
  }

  Future<List<Barang>> getBarangs() async {
    final Database db = await database;
    List<Map<String, dynamic>> result = await db.query(_tableName);

    return result.map((res) => Barang.fromMap(res)).toList();
  }

  Future<int> deleteBarang(int id) async {
    final Database db = await database;
    return await db.delete(_tableName, where: 'id = ?', whereArgs: [id]);
  }

  Future<int> updateBarang(Barang barang) async {
    final Database db = await database;
    return await db.update(_tableName, barang.toMap(),
        where: 'id = ?', whereArgs: [barang.id]);
  }
}