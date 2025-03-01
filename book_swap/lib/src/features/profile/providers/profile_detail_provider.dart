import 'package:flutter/material.dart';
import 'package:autoverpod/autoverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../profile_schema.schema.dart';
import '../i_profile_repo.dart';

part 'profile_detail_provider.g.dart';

@stateWidget
@riverpod
class ProfileDetail extends _$ProfileDetail {
  @override
  FutureOr<ProfileModel> build(ProfileId id) {
    return ref.watch(profileRepoProvider).findOne(id).then((value) => value.getOrThrow());
  }

  /// Perform side-effect update detail provider
  void updateState(ProfileModel Function(ProfileModel oldState) newState) {
    state = state.whenData(newState);
  }
}
