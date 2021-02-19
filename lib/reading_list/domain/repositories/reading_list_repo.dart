import 'package:pomona/reading_list/domain/entities/reading_list.dart';

abstract class ReadingListRepo {
  Future<List<ReadingList>> fetchReadingLists();
}
