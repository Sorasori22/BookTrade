import 'package:book_swap/src/features/book/providers/my_book_list_provider.dart'
    show myBookListProvider;
import 'package:fpdart/fpdart.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../book_schema.schema.dart';
import '../i_book_repo.dart';
import 'book_detail_provider.dart';
import 'book_list_pagination_provider.dart';

part 'book_delete_provider.g.dart';

@riverpod
class BookDelete extends _$BookDelete {
  @override
  ProviderStatus<Unit> build(BookId id) => const ProviderStatus.initial();

  Future<ProviderStatus<Unit>> call() async {
    return await perform(
      (state) async {
        final result = await ref.read(bookRepoProvider).delete(id);
        return result.getOrThrow();
      },
      onSuccess: (success) {
        ref.read(myBookListProvider.notifier).removeWhere((e) => e.id == id);
        ref.invalidate(bookDetailProvider(id));

        /// Can set the invalidateOnLength to 0, but if it just 1, the invalidate is not expensive, it deserve to be used
        /// since it will help accurate the data consistency
        BookPaginationTracker.instance.deletePaginatedItem(ref, id, invalidateOnLength: 1);
      },
    );
  }
}
