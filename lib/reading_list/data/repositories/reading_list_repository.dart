import 'package:pomona/reading_list/data/database_handler/query_builder.dart';
import 'package:pomona/reading_list/data/database_handler/query_executor.dart';
import 'package:pomona/reading_list/domain/entities/reading_list.dart';
import 'package:pomona/reading_list/domain/repositories/reading_list_repo.dart';

class ReadingListRepoImpl extends ReadingListRepo {
  final QueryExecutor _queryExecutor;

  ReadingListRepoImpl(this._queryExecutor);

  @override
  Future<List<ReadingList>> fetchReadingLists() async {
    String query = QueryBuilder().buildSelect(table: 'readingLists');
    //TODO: create a query
    List<Map<String, dynamic>> database_data =
        await _queryExecutor.executeSelect(query, []);
    // TODO: step three: turn the result into a list of reading lists
    // TODO: step four: return the formatted results
  }
}
