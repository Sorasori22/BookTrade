import 'package:fpdart/fpdart.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../genre_schema.schema.dart';
import '../i_genre_repo.dart';
import 'genre_detail_provider.dart';
import 'genre_list_pagination_provider.dart';
import 'genre_list_provider.dart';

part 'genre_delete_provider.g.dart';

@riverpod
class GenreDelete extends _$GenreDelete {
  @override
  ProviderStatus<Unit> build(GenreId id) => const ProviderStatus.initial();


  Future<ProviderStatus<Unit>> call() async {
    return await perform((state) async {
     final result = await ref.read(genreRepoProvider).delete(id);
     return result.getOrThrow();
}, onSuccess: (success) {
    ref.read(genreListProvider.notifier).removeWhere((e) => e.id == id);
    ref.invalidate(genreDetailProvider(id));

    /// Can set the invalidateOnLength to 0, but if it just 1, the invalidate is not expensive, it deserve to be used
    /// since it will help accurate the data consistency
    GenrePaginationTracker.instance.deletePaginatedItem(ref, id, invalidateOnLength: 1);
  },);
  }
}