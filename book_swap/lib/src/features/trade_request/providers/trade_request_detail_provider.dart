import 'package:flutter/material.dart';
import 'package:autoverpod/autoverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../trade_request_schema.schema.dart';
import '../i_trade_request_repo.dart';

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
