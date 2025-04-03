import 'package:book_swap/src/features/notification/providers/notification_list_pagination_provider.dart';
import 'package:book_swap/src/features/trade_request/i_trade_request_repo.dart';
import 'package:fpdart/fpdart.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../chat/providers/chat_list_pagination_provider.dart';
import '../../message/providers/message_list_pagination_provider.dart';
import '../trade_request_schema.dart';
import '../trade_request_schema.schema.dart';

part 'trade_request_update_status_provider.g.dart';

@riverpod
class TradeRequestUpdateStatus extends _$TradeRequestUpdateStatus {
  @override
  ProviderStatus<Unit> build(TradeRequestId id) => const ProviderStatus.initial();

  Future<ProviderStatus<Unit>> call({
    required TradeRequestStatus status,
    String? rejectReason,
  }) async {
    return await perform(
      (state) async {
        return ref
            .read(tradeRequestRepoProvider)
            .updateStatus(id, status, rejectReason: rejectReason)
            .getOrThrow();
      },
      onSuccess: (success) {
        ref.invalidate(messageListPaginationProvider);
        ref.invalidate(chatListPaginationProvider);
        ref.invalidate(notificationListPaginationProvider);
        ref.invalidateSelf();
      },
    );
  }
}
