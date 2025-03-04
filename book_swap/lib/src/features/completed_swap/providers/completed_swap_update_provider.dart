import 'package:autoverpod/autoverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../completed_swap_schema.schema.dart';
import '../i_completed_swap_repo.dart';
import 'completed_swap_detail_provider.dart';
import 'completed_swap_list_pagination_provider.dart';
import 'completed_swap_list_provider.dart';

part 'completed_swap_update_provider.g.dart';

@formWidget
@riverpod
class CompletedSwapUpdate extends _$CompletedSwapUpdateWidget {
  @override
  Future<CompletedSwapUpdateParam> build(CompletedSwapId completedSwapId) async {
    final result = await ref.read(completedSwapRepoProvider).findOne(completedSwapId).getOrThrow();
    return CompletedSwapUpdateParam(
      completedAt: result.completedAt,
    );
  }

  @override
  Future<CompletedSwapModel> submit(CompletedSwapUpdateParam state) async {
    return await ref
        .read(completedSwapRepoProvider)
        .update(completedSwapId, data: state)
        .getOrThrow();
  }

  @override
  void onSuccess(CompletedSwapModel result) {
    ref.read(completedSwapListProvider.notifier).updateItem(result);
    ref.read(completedSwapDetailProvider(completedSwapId).notifier).updateState((_) => result);

    //! Use with caution
    /// this update might lead to data inconsistency, for example, if we have update the item to not meet the param filter
    /// in this case, the item should be removed from the paginated list, but using this method will just update the item
    /// other case is if we update sort order, the item might need to change position
    CompletedSwapPaginationTracker.instance.updatePaginatedItem(ref, result);
  }
}
