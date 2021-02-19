import 'package:sqflite/sqflite.dart';
//the query executor should hold a state that indicates if the tables are
// created in the database or not so it means this class should be initiated
//only once and then injected to the repository.
class QueryExecutor{
  Database db;
  QueryExecutor({this.db});
  //this does not return a value. a function like query should be used
  Future<dynamic> execute(String query,List<dynamic> data){
    return db.execute(query,data);
  }
}