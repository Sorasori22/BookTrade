import 'package:book_swap/src/features/notification/i_notification_repo.dart';
import 'package:book_swap/src/features/notification/providers/notification_list_pagination_provider.dart';
import 'package:book_swap/src/features/notification/providers/notification_unread_count_provider.dart';
import 'package:fpdart/fpdart.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/account/account.dart';

part 'notification_clear_all_unread_provider.g.dart';

@riverpod
class NotificationClearAllUnread extends _$NotificationClearAllUnread {
  @override
  ProviderStatus<Unit> build() => const ProviderStatus.initial();

  Future<ProviderStatus<Unit>> call() async {
    return await perform(
      (state) async {
        final userId = ref.read(currentUserIdProvider)!;
        return ref.read(notificationRepoProvider).clearAllUnread(userId).getOrThrow();
      },
      onSuccess: (success) {
        ref.invalidate(notificationListPaginationProvider);
        ref.invalidate(notificationUnreadCountProvider);
        ref.invalidateSelf();
      },
    );
  }
}
