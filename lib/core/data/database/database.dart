import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

const db_name = 'pomona_local.db';
const version = 1;

class DatabaseProvider {
  Database db;

  //! run after WidgetsFlutterBinding.ensureInitialized
  Future<void> initiateDatabase() async {
    db = await openDatabase(join(await getDatabasesPath(), db_name));
  }

  Future<void> terminateDatabase() async {
    //TODO close database
  }
}
