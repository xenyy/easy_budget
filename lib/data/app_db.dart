import 'dart:async';

import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:path/path.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

class AppDatabase {

  static final AppDatabase _singleton = AppDatabase._();
  static AppDatabase get instance => _singleton;
  Completer<Database> _dbOpenCompleter; //transform sync code into async code

  AppDatabase._();

  Future<Database> get database async {
    //if completer is null the database is not yet opened so we need to await the future, otherwise it will happen instantly.
    //In other words when we call instance we will either open a new or return the already open
    if(_dbOpenCompleter == null){
      _dbOpenCompleter = Completer();
      _openDatabase();
    }
    return _dbOpenCompleter.future;
  }

  Future _openDatabase() async {
    final appDocumentPath = await path_provider.getApplicationDocumentsDirectory();
    final dbPath = join(appDocumentPath.path,'easy_budget.db');
    final db = await databaseFactoryIo.openDatabase(dbPath);

    _dbOpenCompleter.complete(db);
  }

}
