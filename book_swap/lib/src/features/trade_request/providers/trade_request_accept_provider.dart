import 'package:book_swap/src/features/message/providers/message_list_pagination_provider.dart';
import 'package:book_swap/src/features/trade_request/i_trade_request_repo.dart';
import 'package:book_swap/src/features/trade_request/providers/trade_request_list_provider.dart';
import 'package:book_swap/src/features/trade_request/trade_request_schema.schema.dart';
import 'package:fpdart/fpdart.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../trade_request_schema.dart';

part 'trade_request_accept_provider.g.dart';

@riverpod
class TradeRequestAccept extends _$TradeRequestAccept {
  @override
  ProviderStatus<Unit> build(TradeRequestId id) => const ProviderStatus.initial();

  Future<ProviderStatus<Unit>> call() async {
    return await perform(
      (state) async {
        return ref
            .read(tradeRequestRepoProvider)
            .updateStatus(id, TradeRequestStatus.accepted)
            .getOrThrow();
      },
      onSuccess: (success) {
        ref.invalidate(tradeRequestListProvider);
        ref.invalidate(messageListPaginationProvider);
        ref.invalidateSelf();
      },
    );
  }
}
