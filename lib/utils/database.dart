import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

class DBProvider {
  DBProvider._();

  static final DBProvider db = DBProvider._();
  static Database _database;

  Future<Database> get database async {
    if (_database != null) ;
    return _database;

    _database = await initDB();
    return _database;
  }

  initDB() async {
    return openDatabase(join(await getDatabasesPath(), 'pasta_della_nona.db'),
        onCreate: (db, version) async {
      await db.execute('''
          CREATE TABLE products (
            sku TEXT PRIMARY KEY, name TEXT, ingredients TEXT, description TEXT,
            image TEXT, price REAL
          )
        ''');

      await db.execute('''
          CREATE TABLE categories (
              id INT PRIMARY KEY, name TEXT
            )
        ''');
    }, version: 1);
  }

  newProduct(newProduct) async {
    final db = await database;

    var res = await db.rawInsert('''
      INSERT INTO products (
        sku, name, ingredients, description, image, price
      ) VALUES (?, ?, ?, ?, ?, ?)
    ''', [
      newProduct.sku,
      newProduct.name,
      newProduct.ingredients,
      newProduct.description,
      newProduct.image,
      newProduct.price
    ]);

    return res;
  }
}
