import 'package:autoverpod/autoverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../i_user_repo.dart';
import '../user_schema.schema.dart';

part 'user_update_provider.g.dart';

@formWidget
@riverpod
class UserUpdate extends _$UserUpdateWidget {
  @override
  Future<UserUpdateParam> build(UserId userId) async {
    final result = await ref.read(userRepoProvider).findOne(userId).getOrThrow();
    return UserUpdateParam(
        // Initialize form fields with the user data
        );
  }

  @override
  Future<UserModel> submit(UserUpdateParam state) async {
    return await ref.read(userRepoProvider).update(userId, data: state).getOrThrow();
  }

  @override
  void onSuccess(UserModel result) {
    // TODO: implement onSuccess
    super.onSuccess(result);
  }
}
