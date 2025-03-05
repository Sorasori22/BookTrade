import 'package:autoverpod/autoverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../book_schema.schema.dart';
import '../i_book_repo.dart';

part 'book_detail_provider.g.dart';

@stateWidget
@riverpod
class BookDetail extends _$BookDetail {
  @override
  FutureOr<BookDetailModel> build(BookId id) {
    return ref.watch(bookRepoProvider).findOne(id).then((value) => value.getOrThrow());
  }

  /// Perform side-effect update detail provider
  void updateState(BookDetailModel Function(BookDetailModel oldState) newState) {
    state = state.whenData(newState);
  }
}
