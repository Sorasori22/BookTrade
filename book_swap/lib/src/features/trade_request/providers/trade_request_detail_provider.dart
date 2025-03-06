import 'package:autoverpod/autoverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../i_trade_request_repo.dart';
import '../trade_request_schema.schema.dart';

part 'trade_request_detail_provider.g.dart';

@stateWidget
@riverpod
class TradeRequestDetail extends _$TradeRequestDetail {
  @override
  FutureOr<TradeRequestModel> build(TradeRequestId id) {
    return ref.watch(tradeRequestRepoProvider).findOne(id).then((value) => value.getOrThrow());
  }

  /// Perform side-effect update detail provider
  void updateState(TradeRequestModel Function(TradeRequestModel oldState) newState) {
    state = state.whenData(newState);
  }
}
