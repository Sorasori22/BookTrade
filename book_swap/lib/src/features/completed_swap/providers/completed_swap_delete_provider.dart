import 'package:fpdart/fpdart.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../completed_swap_schema.schema.dart';
import '../i_completed_swap_repo.dart';
import 'completed_swap_detail_provider.dart';
import 'completed_swap_list_pagination_provider.dart';
import 'completed_swap_list_provider.dart';

part 'completed_swap_delete_provider.g.dart';

@riverpod
class CompletedSwapDelete extends _$CompletedSwapDelete {
  @override
  ProviderStatus<Unit> build(CompletedSwapId id) => const ProviderStatus.initial();


  Future<ProviderStatus<Unit>> call() async {
    return await perform((state) async {
     final result = await ref.read(completedSwapRepoProvider).delete(id);
     return result.getOrThrow();
}, onSuccess: (success) {
    ref.read(completedSwapListProvider.notifier).removeWhere((e) => e.id == id);
    ref.invalidate(completedSwapDetailProvider(id));

    /// Can set the invalidateOnLength to 0, but if it just 1, the invalidate is not expensive, it deserve to be used
    /// since it will help accurate the data consistency
    CompletedSwapPaginationTracker.instance.deletePaginatedItem(ref, id, invalidateOnLength: 1);
  },);
  }
}