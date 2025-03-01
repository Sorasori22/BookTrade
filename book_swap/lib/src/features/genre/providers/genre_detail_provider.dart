import 'package:autoverpod/autoverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../genre_schema.schema.dart';
import '../i_genre_repo.dart';

part 'genre_detail_provider.g.dart';

@stateWidget
@riverpod
class GenreDetail extends _$GenreDetail {
  @override
  FutureOr<GenreModel> build(GenreId id) {
    return ref.watch(genreRepoProvider).findOne(id).then((value) => value.getOrThrow());
  }

  /// Perform side-effect update detail provider
  void updateState(GenreModel Function(GenreModel oldState) newState) {
    state = state.whenData(newState);
  }
}
