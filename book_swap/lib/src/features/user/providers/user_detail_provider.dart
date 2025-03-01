import 'package:autoverpod/autoverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../i_user_repo.dart';
import '../user_schema.schema.dart';

part 'user_detail_provider.g.dart';

@stateWidget
@riverpod
class UserDetail extends _$UserDetail {
  @override
  FutureOr<UserModel> build(UserId id) {
    return ref.watch(userRepoProvider).findOne(id).then((value) => value.getOrThrow());
  }

  /// Perform side-effect update detail provider
  void updateState(UserModel Function(UserModel oldState) newState) {
    state = state.whenData(newState);
  }
}
