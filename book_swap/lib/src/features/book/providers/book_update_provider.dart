import 'package:autoverpod/autoverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../book_schema.schema.dart';
import '../i_book_repo.dart';
import 'book_detail_provider.dart';
import 'book_list_pagination_provider.dart';
import 'book_list_provider.dart';

part 'book_update_provider.g.dart';

@formWidget
@riverpod
class BookUpdate extends _$BookUpdateWidget {
  @override
  Future<BookUpdateParam> build(BookId bookId) async {
    final result = await ref.read(bookRepoProvider).findOne(bookId).getOrThrow();
    return BookUpdateParam(
      title: result.title,
      author: result.author,
      isbn: result.isbn,
      description: result.description,
      condition: result.condition,
      imageUrl: result.imageUrl,
    );
  }

  @override
  Future<BookModel> submit(BookUpdateParam state) async {
    return await ref.read(bookRepoProvider).update(bookId, data: state).getOrThrow();
  }

  @override
  void onSuccess(BookModel result) {
    ref.read(bookListProvider.notifier).updateItem(result);
    ref.read(bookDetailProvider(bookId).notifier).updateState((_) => result);

    //! Use with caution
    /// this update might lead to data inconsistency, for example, if we have update the item to not meet the param filter
    /// in this case, the item should be removed from the paginated list, but using this method will just update the item
    /// other case is if we update sort order, the item might need to change position
    BookPaginationTracker.instance.updatePaginatedItem(ref, result);
  }
}
