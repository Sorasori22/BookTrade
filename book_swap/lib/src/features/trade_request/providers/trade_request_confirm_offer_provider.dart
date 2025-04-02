import 'package:book_swap/src/features/trade_request/i_trade_request_repo.dart';
import 'package:book_swap/src/features/trade_request/trade_request_schema.dart';
import 'package:fpdart/fpdart.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../chat/providers/chat_list_pagination_provider.dart';
import '../../message/providers/message_list_pagination_provider.dart';
import '../trade_request_schema.schema.dart';

part 'trade_request_confirm_offer_provider.g.dart';

@riverpod
class TradeRequestConfirmOffer extends _$TradeRequestConfirmOffer {
  @override
  ProviderStatus<Unit> build(TradeRequestId id) => const ProviderStatus.initial();

  Future<ProviderStatus<Unit>> call() async {
    return await perform(
      (state) async {
        return ref
            .read(tradeRequestRepoProvider)
            .updateStatus(id, TradeRequestStatus.completed)
            .getOrThrow();
      },
      onSuccess: (success) {
        ref.invalidate(messageListPaginationProvider);
        ref.invalidate(chatListPaginationProvider);
      },
    );
  }
}
