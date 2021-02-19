import 'dart:convert';

import 'package:pomona/core/errors/exceptions.dart';
import 'package:pomona/reading_list/domain/entities/reading_list.dart';
import 'package:pomona/reading_list/domain/repositories/reading_list_repo.dart';

class FetchReadingListsCommand {
  final ReadingListRepo repo;

  FetchReadingListsCommand(this.repo);

  Future<List<ReadingList>> execute() async {
    return await repo.fetchReadingLists();
  }
}
