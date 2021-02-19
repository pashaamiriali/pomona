import 'package:pomona/reading_list/data/database_handler/query_executor.dart';
import 'package:pomona/reading_list/domain/entities/reading_list.dart';
import 'package:pomona/reading_list/domain/repositories/reading_list_repo.dart';

class ReadingListRepoImpl extends ReadingListRepo{
  final QueryExecutor queryExecutor;

  ReadingListRepoImpl(this.queryExecutor);

  @override
  Future<List<ReadingList>> fetchReadingLists() {
    // TODO: step one: create a query
    // TODO: step two: execute the query
    // TODO: step three: turn the result into a list of reading lists
    // TODO: step four: return the formatted results
    throw UnimplementedError();
  }

}