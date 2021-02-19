import 'package:pomona/reading_list/data/database_handler/query_executor.dart';
import 'package:sqflite/sqflite.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';

class MockDatabase extends Mock implements Database {}

void main() {
  MockDatabase mockDatabase = MockDatabase();
  test('should run the table creation method if the table_created flag is off',
      () {
    QueryExecutor queryExecutor = QueryExecutor(db: mockDatabase);
    expect(1,2);
  });
}
