import 'package:pomona/reading_list/data/database_handler/query_builder.dart';
import 'package:pomona/reading_list/data/database_handler/query_executor.dart';
import 'package:pomona/reading_list/data/database_handler/tables.dart';
import 'package:pomona/reading_list/domain/entities/reading_list.dart';
import 'package:pomona/reading_list/domain/repositories/reading_list_repo.dart';

class ReadingListRepoImpl extends ReadingListRepo {
  final QueryExecutor _queryExecutor;

  ReadingListRepoImpl(this._queryExecutor);

  @override
  Future<List<ReadingList>> fetchReadingLists() async {
    String query = QueryBuilder().buildSelect(table: Tables.reading_lists[0]);
    List<Map<String, dynamic>> rawList =
        await _queryExecutor.executeSelect(query, []);
    List<ReadingList> readingLists = rawList
        .map(
          (e) => ReadingList(
            id: e["id"],
            name: e["name"],
            bookCount: e["bookCount"],
            finishedBooksCount: e["finishedBooksCount"],
          ),
        )
        .toList();
    return readingLists;
  }
}
