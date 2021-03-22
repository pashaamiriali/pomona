import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:pomona/core/data/database/database.dart';
import 'package:pomona/reading_list/data/database_handler/query_executor.dart';
import 'package:pomona/reading_list/data/repositories/reading_list_repository.dart';
import 'package:pomona/reading_list/domain/entities/reading_list.dart';
import 'package:pomona/reading_list/domain/usecases/fetch_reading_lists.dart';
import 'package:sqflite/sqflite.dart';

class AppModel extends ChangeNotifier {
  final Database _db;
  AppModel(this._db);
  Database get db=>_db;
}

class HomeModel extends ChangeNotifier {
  final Database _db;
  FetchReadingListsCommand _fetchReadingListsCommand;
  List<ReadingList> _readingLists = [];
  bool _readingListsLoading = false;

  HomeModel(this._db) {
    ReadingListRepoImpl repo = ReadingListRepoImpl(QueryExecutor(db: _db));
    _fetchReadingListsCommand = FetchReadingListsCommand(repo);
  }

  UnmodifiableListView<ReadingList> get readingLists =>
      UnmodifiableListView(_readingLists);

  bool get readingListsLoading => _readingListsLoading;

  void loadReadingLists() async {
    this._readingListsLoading = true;
    notifyListeners();
    this._readingLists = await _fetchReadingListsCommand.execute();
    this._readingListsLoading = false;
    notifyListeners();
  }
}
