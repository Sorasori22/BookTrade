import 'package:autoverpod/autoverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../i_profile_repo.dart';
import '../profile_schema.schema.dart';
import 'profile_detail_provider.dart';
import 'profile_list_pagination_provider.dart';
import 'profile_list_provider.dart';

part 'profile_update_provider.g.dart';

@formWidget
@riverpod
class ProfileUpdate extends _$ProfileUpdateWidget {
  @override
  Future<ProfileUpdateParam> build(ProfileId profileId) async {
    final result = await ref.read(profileRepoProvider).findOne(profileId).getOrThrow();
    return ProfileUpdateParam(
      username: result.username,
      fullname: result.fullname,
      avatar: result.avatar,
      bio: result.bio,
      location: result.location,
      age: result.age,
      address: result.address,
      phoneNumber: result.phoneNumber,
    );
  }

  @override
  Future<ProfileDetailModel> submit(ProfileUpdateParam state) async {
    return await ref.read(profileRepoProvider).update(profileId, data: state).getOrThrow();
  }

  @override
  void onSuccess(ProfileDetailModel result) {
    ref.read(profileListProvider.notifier).updateItem(result.toProfileModel());
    ref.read(profileDetailProvider(profileId).notifier).updateState((_) => result);

    //! Use with caution
    /// this update might lead to data inconsistency, for example, if we have update the item to not meet the param filter
    /// in this case, the item should be removed from the paginated list, but using this method will just update the item
    /// other case is if we update sort order, the item might need to change position
    ProfilePaginationTracker.instance.updatePaginatedItem(ref, result.toProfileModel());
  }
}
