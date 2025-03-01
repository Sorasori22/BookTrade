import 'package:flutter/material.dart';
import 'package:autoverpod/autoverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../completed_swap_schema.schema.dart';
import '../i_completed_swap_repo.dart';

part 'completed_swap_detail_provider.g.dart';

@stateWidget
@riverpod
class CompletedSwapDetail extends _$CompletedSwapDetail {
  @override
  FutureOr<CompletedSwapModel> build(CompletedSwapId id) {
    return ref.watch(completedSwapRepoProvider).findOne(id).then((value) => value.getOrThrow());
  }

  /// Perform side-effect update detail provider
  void updateState(CompletedSwapModel Function(CompletedSwapModel oldState) newState) {
    state = state.whenData(newState);
  }
}
