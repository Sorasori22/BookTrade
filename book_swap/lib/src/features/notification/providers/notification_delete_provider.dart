import 'package:fpdart/fpdart.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../notification_schema.schema.dart';
import '../i_notification_repo.dart';
import 'notification_detail_provider.dart';
import 'notification_list_pagination_provider.dart';
import 'notification_list_provider.dart';

part 'notification_delete_provider.g.dart';

@riverpod
class NotificationDelete extends _$NotificationDelete {
  @override
  ProviderStatus<Unit> build(NotificationId id) => const ProviderStatus.initial();


  Future<ProviderStatus<Unit>> call() async {
    return await perform((state) async {
     final result = await ref.read(notificationRepoProvider).delete(id);
     return result.getOrThrow();
}, onSuccess: (success) {
    ref.read(notificationListProvider.notifier).removeWhere((e) => e.id == id);
    ref.invalidate(notificationDetailProvider(id));

    /// Can set the invalidateOnLength to 0, but if it just 1, the invalidate is not expensive, it deserve to be used
    /// since it will help accurate the data consistency
    NotificationPaginationTracker.instance.deletePaginatedItem(ref, id, invalidateOnLength: 1);
  },);
  }
}