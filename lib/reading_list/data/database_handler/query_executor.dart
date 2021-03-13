import 'package:sqflite/sqflite.dart';

//the query executor should hold a state that indicates if the tables are
// created in the database or not so it means this class should be initiated
//only once and then injected to the repository.
class QueryExecutor {
  Database db;

  QueryExecutor({this.db});

  //this does not return a value. a function like query should be used
  Future<int> executeDelete(String query, List<dynamic> data) {
    return db.rawDelete(query, data);
  }

  Future<int> executeUpdate(String query, List<dynamic> data) {
    return db.rawUpdate(query, data);
  }

  Future<List<Map<String, dynamic>>> executeSelect(
      String query, List<dynamic> data) {
    return db.rawQuery(query, data);
  }

  Future<int> executeInsert(String query, List<dynamic> data) {
    return db.rawInsert(query, data);
  }
}
