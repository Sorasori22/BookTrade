import 'package:autoverpod/autoverpod.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:kimapp/kimapp.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../i_user_rating_repo.dart';
import '../user_rating_schema.schema.dart';

part 'user_rating_list_provider.g.dart';

@stateWidget
@riverpod
class UserRatingList extends _$UserRatingList with IListAsyncNotifier<UserRatingModel> {
  @override
  bool identity(UserRatingModel item) => item.id == item.id;

  @override
  FutureOr<IList<UserRatingModel>> build() {
    return ref.watch(userRatingRepoProvider).findAll().getOrThrow();
  }
}
