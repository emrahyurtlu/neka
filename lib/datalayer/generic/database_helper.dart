import 'dart:async';

import 'package:neka/models/location_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  static Database _db;

  Future<Database> get db async {
    if (_db == null) {
      _db = await initDb();
    }
    return _db;
  }

  initDb() async {
    var folder = await getDatabasesPath();
    var path = join(folder, "neka.db");
    return await openDatabase(path, onCreate: _onCreate, version: 1);
  }

  FutureOr<void> _onCreate(Database db, int version) async {
    /// Favorites Table Creation
    await db.execute(
        "CREATE TABLE `favorites` (`id`	INTEGER PRIMARY KEY AUTOINCREMENT, `product_id`	INTEGER NOT NULL)");

    /// Followed Firms Table Creation
    await db.execute(
        "CREATE TABLE `followed_firms` (`id`	INTEGER PRIMARY KEY AUTOINCREMENT, `firm_id`	INTEGER NOT NULL)");

    /// Locations Table Creation
    await db.execute(
        "CREATE TABLE `locations` (`id`	INTEGER PRIMARY KEY AUTOINCREMENT, `latitude`	REAL NOT NULL, `longitude`	REAL NOT NULL, `city`	TEXT NOT NULL, `district`	TEXT NOT NULL, `full_addr`	TEXT)");
  }
}
