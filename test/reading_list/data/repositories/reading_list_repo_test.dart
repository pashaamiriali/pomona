import 'package:mockito/mockito.dart';
import 'package:pomona/reading_list/data/database_handler/query_executor.dart';
import 'package:pomona/reading_list/data/repositories/reading_list_repository.dart';
import 'package:pomona/reading_list/domain/entities/reading_list.dart';
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
    test(
        "should return a list of reading lists containing the same data in what the database returns",
        () async {
      ReadingListRepoImpl repo = ReadingListRepoImpl(queryExecutor);
      when(queryExecutor.executeSelect("SELECT * FROM reading_lists", []))
          .thenAnswer((_) async => [
                {
                  "id": "1",
                  "name": "Main List",
                  "bookCount": 5,
                  "finishedBooksCount": 2
                }
              ]);
      List<ReadingList> result = await repo.fetchReadingLists();
      expect(result.length, 1);
      expect(result[0].id, "1");
      expect(result[0].name, "Main List");
      expect(result[0].bookCount, 5);
      expect(result[0].finishedBooksCount, 2);
    });
  });
}
