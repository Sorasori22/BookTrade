import 'package:autoverpod/autoverpod.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/helpers/ilist_provider_helper.dart';
import '../i_genre_repo.dart';
import '../genre_schema.schema.dart';

part 'genre_list_provider.g.dart';

@stateWidget
@riverpod
class GenreList extends _$GenreList with IListAsyncNotifier<GenreModel> {
  @override
  bool identity(GenreModel item) => item.id == item.id;

  @override
  FutureOr<IList<GenreModel>> build() {
    return ref.watch(genreRepoProvider).findAll().getOrThrow();
  }
}
