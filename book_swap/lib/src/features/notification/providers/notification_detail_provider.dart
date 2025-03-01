import 'package:flutter/material.dart';
import 'package:autoverpod/autoverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../notification_schema.schema.dart';
import '../i_notification_repo.dart';

part 'notification_detail_provider.g.dart';

@stateWidget
@riverpod
class NotificationDetail extends _$NotificationDetail {
  @override
  FutureOr<NotificationModel> build(NotificationId id) {
    return ref.watch(notificationRepoProvider).findOne(id).then((value) => value.getOrThrow());
  }

  /// Perform side-effect update detail provider
  void updateState(NotificationModel Function(NotificationModel oldState) newState) {
    state = state.whenData(newState);
  }
}
