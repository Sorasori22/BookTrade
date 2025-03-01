import 'package:autoverpod/autoverpod.dart';
import 'package:book_swap/src/features/user/providers/user_list_pagination_provider.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../i_user_repo.dart';
import '../user_schema.schema.dart';
import 'user_list_provider.dart';

part 'user_create_provider.g.dart';

@formWidget
@riverpod
class UserCreate extends _$UserCreateWidget {
  @override
  UserCreateParam build() => const UserCreateParam();

  @override
  Future<UserModel> submit(UserCreateParam state) async {
    return await ref.read(userRepoProvider).create(state).getOrThrow();
  }

  @override
  void onSuccess(UserModel result) {
    ref.read(userListProvider.notifier).insertItem(result);
    ref.invalidate(userListPaginationProvider);
  }
}
