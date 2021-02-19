class QueryBuilder{
  String buildSelect({String table}){
    return "SELECT * FROM $table";
  }
}