import 'package:autoverpod/autoverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../i_book_genre_repo.dart';
import '../book_genre_schema.schema.dart';
import 'book_genre_detail_provider.dart';
import 'book_genre_list_pagination_provider.dart';
import 'book_genre_list_provider.dart';

part 'book_genre_update_provider.g.dart';

@formWidget
@riverpod
class BookGenreUpdate extends _$BookGenreUpdateWidget {
  @override
  Future<BookGenreUpdateParam> build(BookGenreId bookGenreId) async {
    final result = await ref.read(bookGenreRepoProvider).findOne(bookGenreId).getOrThrow();
    return BookGenreUpdateParam(
        // TODO: Initialize form fields with the bookGenre data
    );
  }

  @override
  Future<BookGenreModel> submit(BookGenreUpdateParam state) async {
    return await ref.read(bookGenreRepoProvider).update(bookGenreId, data: state).getOrThrow();
  }

  @override
  void onSuccess(BookGenreModel result) {
    ref.read(bookGenreListProvider.notifier).updateItem(result);
    ref.read(bookGenreDetailProvider(bookGenreId).notifier).updateState((_) => result);

    //! Use with caution
    /// this update might lead to data inconsistency, for example, if we have update the item to not meet the param filter
    /// in this case, the item should be removed from the paginated list, but using this method will just update the item
    /// other case is if we update sort order, the item might need to change position
    BookGenrePaginationTracker.instance.updatePaginatedItem(ref, result);
    
    super.onSuccess(result);
  }
}
