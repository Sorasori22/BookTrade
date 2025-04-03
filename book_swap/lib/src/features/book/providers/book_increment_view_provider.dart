import 'package:book_swap/src/features/book/book_schema.schema.dart';
import 'package:book_swap/src/features/book/i_book_repo.dart';
import 'package:fpdart/fpdart.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'book_increment_view_provider.g.dart';

@riverpod
class BookIncrementView extends _$BookIncrementView {
  @override
  ProviderStatus<Unit> build(BookId bookId) => const ProviderStatus.initial();

  Future<ProviderStatus<Unit>> call() async {
    return await perform(
      (state) async {
        return ref.read(bookRepoProvider).incrementViewCount(bookId).getOrThrow();
      },
      onSuccess: (success) {
        ref.invalidateSelf();
      },
    );
  }
}
