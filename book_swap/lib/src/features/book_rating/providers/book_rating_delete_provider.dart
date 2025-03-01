import 'package:fpdart/fpdart.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../book_rating_schema.schema.dart';
import '../i_book_rating_repo.dart';
import 'book_rating_detail_provider.dart';
import 'book_rating_list_pagination_provider.dart';
import 'book_rating_list_provider.dart';

part 'book_rating_delete_provider.g.dart';

@riverpod
class BookRatingDelete extends _$BookRatingDelete {
  @override
  ProviderStatus<Unit> build(BookRatingId id) => const ProviderStatus.initial();


  Future<ProviderStatus<Unit>> call() async {
    return await perform((state) async {
     final result = await ref.read(bookRatingRepoProvider).delete(id);
     return result.getOrThrow();
}, onSuccess: (success) {
    ref.read(bookRatingListProvider.notifier).removeWhere((e) => e.id == id);
    ref.invalidate(bookRatingDetailProvider(id));

    /// Can set the invalidateOnLength to 0, but if it just 1, the invalidate is not expensive, it deserve to be used
    /// since it will help accurate the data consistency
    BookRatingPaginationTracker.instance.deletePaginatedItem(ref, id, invalidateOnLength: 1);
  },);
  }
}