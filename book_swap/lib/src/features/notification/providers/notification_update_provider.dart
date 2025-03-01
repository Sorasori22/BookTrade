import 'package:autoverpod/autoverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../i_notification_repo.dart';
import '../notification_schema.schema.dart';
import 'notification_detail_provider.dart';
import 'notification_list_pagination_provider.dart';
import 'notification_list_provider.dart';

part 'notification_update_provider.g.dart';

@formWidget
@riverpod
class NotificationUpdate extends _$NotificationUpdateWidget {
  @override
  Future<NotificationUpdateParam> build(NotificationId notificationId) async {
    final result = await ref.read(notificationRepoProvider).findOne(notificationId).getOrThrow();
    return NotificationUpdateParam(
      read: result.read,
    );
  }

  @override
  Future<NotificationModel> submit(NotificationUpdateParam state) async {
    return await ref
        .read(notificationRepoProvider)
        .update(notificationId, data: state)
        .getOrThrow();
  }

  @override
  void onSuccess(NotificationModel result) {
    ref.read(notificationListProvider.notifier).updateItem(result);
    ref.read(notificationDetailProvider(notificationId).notifier).updateState((_) => result);

    //! Use with caution
    /// this update might lead to data inconsistency, for example, if we have update the item to not meet the param filter
    /// in this case, the item should be removed from the paginated list, but using this method will just update the item
    /// other case is if we update sort order, the item might need to change position
    NotificationPaginationTracker.instance.updatePaginatedItem(ref, result);

    super.onSuccess(result);
  }
}
