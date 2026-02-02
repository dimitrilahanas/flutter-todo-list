import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseService {
  static const int _version = 1;
  static const String _dbName = "Todo.db";

  static Future<Database> _getDB() async {
    return openDatabase(join(await getDatabasesPath(), _dbName),
    onCreate: (db, version) async => 
    await db.execute('''
      CREATE TABLE Tasks (
        id INTEGER PRIMARY KEY,
        name TEXT NOT NULL, 
        isdone INTEGER NOT NULL
      );'''),
    version: _version
    );
  }
}