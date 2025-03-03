import 'package:autoverpod/autoverpod.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:kimapp/kimapp.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../book_genre_schema.schema.dart';
import '../i_book_genre_repo.dart';

part 'book_genre_list_provider.g.dart';

@stateWidget
@riverpod
class BookGenreList extends _$BookGenreList with IListAsyncNotifier<BookGenreModel> {
  @override
  bool identity(BookGenreModel item) => item.id == item.id;

  @override
  FutureOr<IList<BookGenreModel>> build() {
    return ref.watch(bookGenreRepoProvider).findAll().getOrThrow();
  }
}
