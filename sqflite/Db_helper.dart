import 'dart:async';
import 'dart:io';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'Utilisateur.dart';

class DBHelper {
  static Database _db;
  static const String ID = 'id';
  static const String NAME = 'name';
  static const String TABLE = 'Utilisateur';
  static const String DB_NAME = 'utilisateur.db';

  Future<Database> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDb();
    return _db;
  }
  initDb() async {
    io.directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, DB_NAME);
    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }
  _onCreate(Database db, int version) async {
    await db.execute("CREATE TABLE $TABLE ($ID INTEGER PRIMARY KEY, $NAME TEXT)");
  }
  Future<Utilisateur> save(Utilisateur utilisateur) async {
    var dbClient = await db;
    utilisateur.id = await dbClient.insert(TABLE, utilisateur.toMap());
    return utilisateur;

    /*await dbClient.transaction((txn) async {
      var query = "INSERT INTO $TABLE ($NAME) VALUES ('" + utilisateur.name + "')";
      return await txn.rawInsert(query);
    });*/
  }

  Future<List<Utilisateur>> getUtilisateurs() async {
    var dbClient = await db;
    List<Map> maps = await dbClient.query(TABLE, columns: [ID, NAME]);
    //List<Map> maps = await dbClient.rawQuery("SELECT * FROM $TABLE");
    List<Utilisateur> utilisateurs = [];
    if (maps.length > 0) {
      for (int i = 0; i < maps.length; i++) {
        utilisateurs.add(Utilisateur.fromMap(maps[i]));
      }
    }
    return utilisateurs;
  }

  Future<int> delete(int id) async {
    var dbClient = await db;
    return await dbClient.delete(TABLE, where: '$ID = ?', whereArgs: [id]);
  }

  Future<int> update(Utilisateur utilisateur) async {
    var dbClient = await db;
    return await dbClient.update(TABLE, utilisateur.toMap(), where: '$ID = ?', whereArgs: [utilisateur.id]);
  }

  Future close() async {
    var dbClient = await db;
    dbClient.close();
  }
}