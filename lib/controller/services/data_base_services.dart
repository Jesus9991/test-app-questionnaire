import 'dart:developer';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._init();
  static Database? _database;
  DatabaseHelper._init();

  String tableQuestions = 'question_data_one';

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('question_data_one.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);
    return await openDatabase(
      path,
      version: 3,
      onCreate: _onCreateDB,
    );
  }

  Future<void> _onCreateDB(Database db, int version) async {
    await db.execute('''
    CREATE TABLE $tableQuestions (
      id INTEGER PRIMARY KEY, 
      full_name TEXT, 
      favorite_food TEXT, 
      hobbies TEXT
    )
  ''');
  }

  Future<void> insertData(
      String fullName, String favoriteFood, String hobbies) async {
    final Database db = await instance.database;

    await db.insert(
      tableQuestions,
      {
        'full_name': fullName,
        'favorite_food': favoriteFood,
        'hobbies': hobbies,
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );

    log('Datos guardados $fullName / $favoriteFood / $hobbies');
  }
}
