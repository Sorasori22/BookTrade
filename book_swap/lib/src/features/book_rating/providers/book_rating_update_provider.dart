import 'package:autoverpod/autoverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../book_rating_schema.schema.dart';
import '../i_book_rating_repo.dart';
import 'book_rating_detail_provider.dart';
import 'book_rating_list_pagination_provider.dart';
import 'book_rating_list_provider.dart';

part 'book_rating_update_provider.g.dart';

@formWidget
@riverpod
class BookRatingUpdate extends _$BookRatingUpdateWidget {
  @override
  Future<BookRatingUpdateParam> build(BookRatingId bookRatingId) async {
    final result = await ref.read(bookRatingRepoProvider).findOne(bookRatingId).getOrThrow();
    return BookRatingUpdateParam(
      rating: result.rating,
      comment: result.comment,
    );
  }

  @override
  Future<BookRatingModel> submit(BookRatingUpdateParam state) async {
    return await ref.read(bookRatingRepoProvider).update(bookRatingId, data: state).getOrThrow();
  }

  @override
  void onSuccess(BookRatingModel result) {
    ref.read(bookRatingListProvider.notifier).updateItem(result);
    ref.read(bookRatingDetailProvider(bookRatingId).notifier).updateState((_) => result);

    //! Use with caution
    /// this update might lead to data inconsistency, for example, if we have update the item to not meet the param filter
    /// in this case, the item should be removed from the paginated list, but using this method will just update the item
    /// other case is if we update sort order, the item might need to change position
    BookRatingPaginationTracker.instance.updatePaginatedItem(ref, result);
  }
}
