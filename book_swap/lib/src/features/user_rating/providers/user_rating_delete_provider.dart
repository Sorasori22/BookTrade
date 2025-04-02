import 'package:fpdart/fpdart.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../i_user_rating_repo.dart';
import '../user_rating_schema.schema.dart';
import 'user_rating_detail_provider.dart';
import 'user_rating_list_pagination_provider.dart';
import 'user_rating_list_provider.dart';

part 'user_rating_delete_provider.g.dart';

@riverpod
class UserRatingDelete extends _$UserRatingDelete {
  @override
  ProviderStatus<Unit> build(UserRatingId id) => const ProviderStatus.initial();

  Future<ProviderStatus<Unit>> call() async {
    return await perform(
      (state) async {
        final result = await ref.read(userRatingRepoProvider).delete(id);
        return result.getOrThrow();
      },
      onSuccess: (success) {
        ref.invalidate(userRatingListProvider);
        ref.invalidate(userRatingDetailProvider(id));

        /// Can set the invalidateOnLength to 0, but if it just 1, the invalidate is not expensive, it deserve to be used
        /// since it will help accurate the data consistency
        UserRatingPaginationTracker.instance.deletePaginatedItem(ref, id, invalidateOnLength: 1);
      },
    );
  }
}
