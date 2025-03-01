import 'package:fpdart/fpdart.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../i_user_repo.dart';
import '../user_schema.schema.dart';
import 'user_detail_provider.dart';
import 'user_list_pagination_provider.dart';
import 'user_list_provider.dart';

part 'user_delete_provider.g.dart';

@riverpod
class UserDelete extends _$UserDelete {
  @override
  ProviderStatus<Unit> build(UserId id) => const ProviderStatus.initial();

  Future<ProviderStatus<Unit>> call() async {
    return await perform(
      (state) async {
        final result = await ref.read(userRepoProvider).delete(id);
        return result.getOrThrow();
      },
      onSuccess: (success) {
        ref.read(userListProvider.notifier).removeWhere((e) => e.id == id);
        ref.invalidate(userDetailProvider(id));

        /// Can set the invalidateOnLength to 0, but if it just 1, the invalidate is not expensive, it deserve to be used
        /// since it will help accurate the data consistency
        UserPaginationTracker.instance.deletePaginatedItem(ref, id, invalidateOnLength: 1);
      },
    );
  }
}
