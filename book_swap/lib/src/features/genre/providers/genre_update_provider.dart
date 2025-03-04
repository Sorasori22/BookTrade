import 'package:autoverpod/autoverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../genre_schema.schema.dart';
import '../i_genre_repo.dart';
import 'genre_detail_provider.dart';
import 'genre_list_pagination_provider.dart';
import 'genre_list_provider.dart';

part 'genre_update_provider.g.dart';

@formWidget
@riverpod
class GenreUpdate extends _$GenreUpdateWidget {
  @override
  Future<GenreUpdateParam> build(GenreId genreId) async {
    final result = await ref.read(genreRepoProvider).findOne(genreId).getOrThrow();
    return GenreUpdateParam(
      name: result.name,
    );
  }

  @override
  Future<GenreModel> submit(GenreUpdateParam state) async {
    return await ref.read(genreRepoProvider).update(genreId, data: state).getOrThrow();
  }

  @override
  void onSuccess(GenreModel result) {
    ref.read(genreListProvider.notifier).updateItem(result);
    ref.read(genreDetailProvider(genreId).notifier).updateState((_) => result);

    //! Use with caution
    /// this update might lead to data inconsistency, for example, if we have update the item to not meet the param filter
    /// in this case, the item should be removed from the paginated list, but using this method will just update the item
    /// other case is if we update sort order, the item might need to change position
    GenrePaginationTracker.instance.updatePaginatedItem(ref, result);
  }
}
