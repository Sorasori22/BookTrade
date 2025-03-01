import 'package:flutter/material.dart';
import 'package:autoverpod/autoverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../user_rating_schema.schema.dart';
import '../i_user_rating_repo.dart';

part 'user_rating_detail_provider.g.dart';

@stateWidget
@riverpod
class UserRatingDetail extends _$UserRatingDetail {
  @override
  FutureOr<UserRatingModel> build(UserRatingId id) {
    return ref.watch(userRatingRepoProvider).findOne(id).then((value) => value.getOrThrow());
  }

  /// Perform side-effect update detail provider
  void updateState(UserRatingModel Function(UserRatingModel oldState) newState) {
    state = state.whenData(newState);
  }
}
