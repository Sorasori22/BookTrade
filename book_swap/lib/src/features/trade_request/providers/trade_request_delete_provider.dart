import 'package:fpdart/fpdart.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../i_trade_request_repo.dart';
import '../trade_request_schema.schema.dart';
import 'requested_book_ids_list_provider.dart';
import 'trade_request_detail_provider.dart';

part 'trade_request_delete_provider.g.dart';

@riverpod
class TradeRequestDelete extends _$TradeRequestDelete {
  @override
  ProviderStatus<Unit> build(TradeRequestId id) => const ProviderStatus.initial();

  Future<ProviderStatus<Unit>> call() async {
    return await perform(
      (state) async {
        final result = await ref.read(tradeRequestRepoProvider).delete(id);
        return result.getOrThrow();
      },
      onSuccess: (success) {
        ref.read(prendingTradeRequestListProvider.notifier).removeWhere((e) => e.id == id);
        ref.invalidate(tradeRequestDetailProvider(id));
      },
    );
  }
}
