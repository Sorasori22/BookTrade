import 'package:flutter/material.dart';
import 'package:autoverpod/autoverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../book_rating_schema.schema.dart';
import '../i_book_rating_repo.dart';

part 'book_rating_detail_provider.g.dart';

@stateWidget
@riverpod
class BookRatingDetail extends _$BookRatingDetail {
  @override
  FutureOr<BookRatingModel> build(BookRatingId id) {
    return ref.watch(bookRatingRepoProvider).findOne(id).then((value) => value.getOrThrow());
  }

  /// Perform side-effect update detail provider
  void updateState(BookRatingModel Function(BookRatingModel oldState) newState) {
    state = state.whenData(newState);
  }
}
