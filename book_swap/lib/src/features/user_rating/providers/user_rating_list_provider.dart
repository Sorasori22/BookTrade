import 'package:autoverpod/autoverpod.dart';
import 'package:book_swap/src/features/user_rating/params/user_rating_list_param.dart';
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
  bool comparer(a, b) => a.id == b.id;

  @override
  FutureOr<IList<UserRatingModel>> build(UserRatingListParam param) {
    return ref.watch(userRatingRepoProvider).findAll(param).getOrThrow();
  }
}
