import 'package:mockito/mockito.dart';
import 'package:pomona/reading_list/domain/entities/reading_list.dart';
import 'package:pomona/reading_list/domain/repositories/reading_list_repo.dart';
import 'package:pomona/reading_list/domain/usecases/fetch_reading_lists.dart';
import 'package:test/test.dart';

class MockReadingListRepo extends Mock implements ReadingListRepo {}

void main() {
  final MockReadingListRepo mockReadingListRepo = MockReadingListRepo();
  setUp(() {});

  test('Should return an empty list of reading lists on empty json string ',
      () async {
    FetchReadingListsCommand command =
        FetchReadingListsCommand(mockReadingListRepo);
    when(mockReadingListRepo.fetchReadingLists())
        .thenAnswer((_) async => <ReadingList>[]);
    expect(await command.execute(), []);
    verify(mockReadingListRepo.fetchReadingLists());
  });
}
