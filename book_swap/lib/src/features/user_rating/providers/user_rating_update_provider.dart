import 'package:autoverpod/autoverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../i_user_rating_repo.dart';
import '../user_rating_schema.schema.dart';
import 'user_rating_detail_provider.dart';
import 'user_rating_list_pagination_provider.dart';
import 'user_rating_list_provider.dart';

part 'user_rating_update_provider.g.dart';

@formWidget
@riverpod
class UserRatingUpdate extends _$UserRatingUpdateWidget {
  @override
  Future<UserRatingUpdateParam> build(UserRatingId userRatingId) async {
    final result = await ref.read(userRatingRepoProvider).findOne(userRatingId).getOrThrow();
    return UserRatingUpdateParam(
      rating: result.rating,
      comment: result.comment,
    );
  }

  @override
  Future<UserRatingModel> submit(UserRatingUpdateParam state) async {
    return await ref.read(userRatingRepoProvider).update(userRatingId, data: state).getOrThrow();
  }

  @override
  void onSuccess(UserRatingModel result) {
    ref.invalidate(userRatingListProvider);
    ref.read(userRatingDetailProvider(userRatingId).notifier).updateState((_) => result);

    //! Use with caution
    /// this update might lead to data inconsistency, for example, if we have update the item to not meet the param filter
    /// in this case, the item should be removed from the paginated list, but using this method will just update the item
    /// other case is if we update sort order, the item might need to change position
    UserRatingPaginationTracker.instance.updatePaginatedItem(ref, result);
  }
}
