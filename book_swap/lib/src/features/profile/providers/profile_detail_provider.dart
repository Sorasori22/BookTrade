import 'package:autoverpod/autoverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../i_profile_repo.dart';
import '../profile_schema.schema.dart';

part 'profile_detail_provider.g.dart';

@stateWidget
@riverpod
class ProfileDetail extends _$ProfileDetail {
  @override
  FutureOr<ProfileDetailModel> build(ProfileId profileId) {
    ref.autoInvalidateSelf(const Duration(minutes: 30));

    return ref.watch(profileRepoProvider).findOne(profileId).getOrThrow();
  }

  void updateState(ProfileDetailModel Function(ProfileDetailModel oldState) newState) {
    state = state.whenData(newState);
  }
}
