import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

final dbProvider = Provider((_) => AppDb.getInstance());

class AppDb {
  static AppDb getInstance() {
    return _appDb ??= AppDb._();
  }

  AppDb._();

  static AppDb? _appDb;

  Database? _database;

  Future<Database> get database async {
    return _database ??= await _initDatabase();
  }

  Future<Database> _initDatabase() async {
    final path = join(await getDatabasesPath(), 'example.db');
    return openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        return db.execute('''
        CREATE TABLE keywords (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        keyword STRING NOT NULL
        )
        ''');
      },
    );
  }
}
