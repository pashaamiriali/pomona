import 'package:mockito/mockito.dart';
import 'package:pomona/reading_list/data/database_handler/query_executor.dart';
import 'package:pomona/reading_list/data/repositories/reading_list_repository.dart';
import 'package:test/test.dart';

class MockQueryExecutor extends Mock implements QueryExecutor {}

void main() {
  MockQueryExecutor queryExecutor = MockQueryExecutor();
  group('fetchReadingLists', () {
    test(
        'fetchReadingLists should call the functions from database handlers in order',
        () {
      ReadingListRepoImpl readingListRepoImpl =
          ReadingListRepoImpl(queryExecutor);
    });
  });
}
