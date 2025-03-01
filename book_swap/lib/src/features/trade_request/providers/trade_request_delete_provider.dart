import 'package:fpdart/fpdart.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../trade_request_schema.schema.dart';
import '../i_trade_request_repo.dart';
import 'trade_request_detail_provider.dart';
import 'trade_request_list_pagination_provider.dart';
import 'trade_request_list_provider.dart';

part 'trade_request_delete_provider.g.dart';

@riverpod
class TradeRequestDelete extends _$TradeRequestDelete {
  @override
  ProviderStatus<Unit> build(TradeRequestId id) => const ProviderStatus.initial();


  Future<ProviderStatus<Unit>> call() async {
    return await perform((state) async {
     final result = await ref.read(tradeRequestRepoProvider).delete(id);
     return result.getOrThrow();
}, onSuccess: (success) {
    ref.read(tradeRequestListProvider.notifier).removeWhere((e) => e.id == id);
    ref.invalidate(tradeRequestDetailProvider(id));

    /// Can set the invalidateOnLength to 0, but if it just 1, the invalidate is not expensive, it deserve to be used
    /// since it will help accurate the data consistency
    TradeRequestPaginationTracker.instance.deletePaginatedItem(ref, id, invalidateOnLength: 1);
  },);
  }
}