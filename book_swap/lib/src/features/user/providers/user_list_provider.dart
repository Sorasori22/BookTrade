import 'package:autoverpod/autoverpod.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:kimapp/kimapp.dart' hide stateWidget;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/helpers/ilist_provider_helper.dart';
import '../i_user_repo.dart';
import '../user_schema.schema.dart';

part 'user_list_provider.g.dart';

@stateWidget
@riverpod
class UserList extends _$UserList with IListAsyncNotifier<UserModel> {
  @override
  bool identity(UserModel item) => item.id == item.id;

  @override
  FutureOr<IList<UserModel>> build() {
    return ref.watch(userRepoProvider).findAll().getOrThrow();
  }
}
