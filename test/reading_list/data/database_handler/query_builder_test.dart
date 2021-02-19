import 'package:pomona/reading_list/data/database_handler/query_builder.dart';
import 'package:test/test.dart';

void main(){
  test('should return a select query string', (){
    QueryBuilder queryBuilder =QueryBuilder();
    String selectFromReadingLists="SELECT * FROM readingLists";
    expect(queryBuilder.buildSelect(table:'readingLists'),selectFromReadingLists);
  });
}