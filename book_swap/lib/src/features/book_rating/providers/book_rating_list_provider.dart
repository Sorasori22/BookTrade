import 'package:autoverpod/autoverpod.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:kimapp/kimapp.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../book_rating_schema.schema.dart';
import '../i_book_rating_repo.dart';

part 'book_rating_list_provider.g.dart';

@stateWidget
@riverpod
class BookRatingList extends _$BookRatingList with IListAsyncNotifier<BookRatingModel> {
  @override
  bool comparer(BookRatingModel item1, BookRatingModel item2) => item1.id == item2.id;

  @override
  FutureOr<IList<BookRatingModel>> build() {
    return ref.watch(bookRatingRepoProvider).findAll().getOrThrow();
  }
}
