import 'package:flutter/material.dart';
import 'package:autoverpod/autoverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../book_genre_schema.schema.dart';
import '../i_book_genre_repo.dart';

part 'book_genre_detail_provider.g.dart';

@stateWidget
@riverpod
class BookGenreDetail extends _$BookGenreDetail {
  @override
  FutureOr<BookGenreModel> build(BookGenreId id) {
    return ref.watch(bookGenreRepoProvider).findOne(id).then((value) => value.getOrThrow());
  }

  /// Perform side-effect update detail provider
  void updateState(BookGenreModel Function(BookGenreModel oldState) newState) {
    state = state.whenData(newState);
  }
}
