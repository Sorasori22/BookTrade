import 'package:autoverpod/autoverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../profile/profile_schema.schema.dart';
import '../i_notification_repo.dart';
import '../notification_schema.schema.dart';
import 'notification_list_pagination_provider.dart';
import 'notification_list_provider.dart';

part 'notification_create_provider.g.dart';

@formWidget
@riverpod
class NotificationCreate extends _$NotificationCreateWidget {
  @override
  NotificationCreateParam build() => NotificationCreateParam(
        userId: ProfileId.fromValue(''),
        content: '',
        relatedTradeId: null,
        notificationType: '',
      );

  @override
  Future<NotificationModel> submit(NotificationCreateParam state) async {
    return await ref.read(notificationRepoProvider).create(state).getOrThrow();
  }

  @override
  void onSuccess(NotificationModel result) {
    ref.read(notificationListProvider.notifier).insertItem(result);
    ref.invalidate(notificationListPaginationProvider);
  }
}
