import 'package:autoverpod/autoverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../i_profile_repo.dart';
import '../profile_schema.schema.dart';
import 'profile_list_pagination_provider.dart';
import 'profile_list_provider.dart';

part 'profile_create_provider.g.dart';

@formWidget
@riverpod
class ProfileCreate extends _$ProfileCreateWidget {
  @override
  ProfileCreateParam build() => ProfileCreateParam(
        id: ProfileId.fromValue(''),
        username: '',
        fullName: '',
        avatarUrl: '',
        bio: '',
        location: '',
        address: '',
        phoneNumber: '',
      );

  @override
  Future<ProfileModel> submit(ProfileCreateParam state) async {
    return await ref.read(profileRepoProvider).create(state).getOrThrow();
  }

  @override
  void onSuccess(ProfileModel result) {
    ref.read(profileListProvider.notifier).insertItem(result);
    ref.invalidate(profileListPaginationProvider);
  }
}
