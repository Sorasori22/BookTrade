import 'package:autoverpod/autoverpod.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:kimapp/kimapp.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../book_schema.schema.dart';
import '../i_book_repo.dart';

part 'book_list_provider.g.dart';

@stateWidget
@riverpod
class BookList extends _$BookList with IListAsyncNotifier<BookModel> {
  @override
  bool identity(BookModel item) => item.id == item.id;

  @override
  FutureOr<IList<BookModel>> build() {
    return ref.watch(bookRepoProvider).findAll().getOrThrow();
  }
}
