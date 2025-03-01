import 'package:autoverpod/autoverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../genre_schema.schema.dart';
import '../i_genre_repo.dart';
import 'genre_list_pagination_provider.dart';
import 'genre_list_provider.dart';

part 'genre_create_provider.g.dart';

@formWidget
@riverpod
class GenreCreate extends _$GenreCreateWidget {
  @override
  GenreCreateParam build() => GenreCreateParam(name: '');

  @override
  Future<GenreModel> submit(GenreCreateParam state) async {
    return await ref.read(genreRepoProvider).create(state).getOrThrow();
  }

  @override
  void onSuccess(GenreModel result) {
    ref.read(genreListProvider.notifier).insertItem(result);
    ref.invalidate(genreListPaginationProvider);
  }
}
