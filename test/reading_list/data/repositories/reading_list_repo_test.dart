import 'package:mockito/mockito.dart';
import 'package:pomona/reading_list/data/database_handler/query_builder.dart';
import 'package:pomona/reading_list/data/database_handler/query_executor.dart';
import 'package:pomona/reading_list/data/repositories/reading_list_repository.dart';
import 'package:test/test.dart';

class MockQueryExecutor extends Mock implements QueryExecutor {}

void main() {
  MockQueryExecutor queryExecutor = MockQueryExecutor();
  group('fetchReadingLists', () {
    test('fetchReadingLists should use executeSelect with the right sql query',
        () {
          ReadingListRepoImpl repo = ReadingListRepoImpl(queryExecutor);
          repo.fetchReadingLists();
          verify(queryExecutor.executeSelect('SELECT * FROM reading_lists', []));
        });
  });
}
