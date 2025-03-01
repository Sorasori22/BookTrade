import 'package:fpdart/fpdart.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../book_genre_schema.schema.dart';
import '../i_book_genre_repo.dart';
import 'book_genre_detail_provider.dart';
import 'book_genre_list_pagination_provider.dart';
import 'book_genre_list_provider.dart';

part 'book_genre_delete_provider.g.dart';

@riverpod
class BookGenreDelete extends _$BookGenreDelete {
  @override
  ProviderStatus<Unit> build(BookGenreId id) => const ProviderStatus.initial();


  Future<ProviderStatus<Unit>> call() async {
    return await perform((state) async {
     final result = await ref.read(bookGenreRepoProvider).delete(id);
     return result.getOrThrow();
}, onSuccess: (success) {
    ref.read(bookGenreListProvider.notifier).removeWhere((e) => e.id == id);
    ref.invalidate(bookGenreDetailProvider(id));

    /// Can set the invalidateOnLength to 0, but if it just 1, the invalidate is not expensive, it deserve to be used
    /// since it will help accurate the data consistency
    BookGenrePaginationTracker.instance.deletePaginatedItem(ref, id, invalidateOnLength: 1);
  },);
  }
}