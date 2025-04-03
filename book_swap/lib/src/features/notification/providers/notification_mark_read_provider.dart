import 'package:book_swap/src/features/notification/i_notification_repo.dart';
import 'package:book_swap/src/features/notification/notification_schema.schema.dart';
import 'package:book_swap/src/features/notification/providers/notification_list_pagination_provider.dart';
import 'package:book_swap/src/features/notification/providers/notification_unread_count_provider.dart';
import 'package:fpdart/fpdart.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notification_mark_read_provider.g.dart';

@riverpod
class NotificationMarkRead extends _$NotificationMarkRead {
  @override
  ProviderStatus<Unit> build(NotificationId id) => const ProviderStatus.initial();

  Future<ProviderStatus<Unit>> call() async {
    return await perform(
      (state) async {
        return ref.read(notificationRepoProvider).markAsRead(id).getOrThrow();
      },
      onSuccess: (success) {
        ref.read(notificationUnreadCountProvider.notifier).decrement();
        ref.invalidate(notificationListPaginationProvider);
      },
    );
  }
}
