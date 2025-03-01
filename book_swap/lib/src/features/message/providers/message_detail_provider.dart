import 'package:flutter/material.dart';
import 'package:autoverpod/autoverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../message_schema.schema.dart';
import '../i_message_repo.dart';

part 'message_detail_provider.g.dart';

@stateWidget
@riverpod
class MessageDetail extends _$MessageDetail {
  @override
  FutureOr<MessageModel> build(MessageId id) {
    return ref.watch(messageRepoProvider).findOne(id).then((value) => value.getOrThrow());
  }

  /// Perform side-effect update detail provider
  void updateState(MessageModel Function(MessageModel oldState) newState) {
    state = state.whenData(newState);
  }
}
