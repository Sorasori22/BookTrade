import 'package:autoverpod/autoverpod.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:kimapp/kimapp.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../i_notification_repo.dart';
import '../notification_schema.schema.dart';

part 'notification_list_provider.g.dart';

@stateWidget
@riverpod
class NotificationList extends _$NotificationList with IListAsyncNotifier<NotificationModel> {
  @override
  bool comparer(a, b) => a.id == b.id;

  @override
  FutureOr<IList<NotificationModel>> build() {
    return ref.watch(notificationRepoProvider).findAll().getOrThrow();
  }
}
