import 'package:book_swap/src/features/notification/i_notification_repo.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notification_unread_count_provider.g.dart';

@riverpod
class NotificationUnreadCount extends _$NotificationUnreadCount {
  @override
  FutureOr<int> build() {
    return ref.watch(notificationRepoProvider).unreadCount().getOrThrow();
  }

  void increment() {
    state = state.whenData((count) => count + 1);
  }

  void decrement() {
    state = state.whenData((count) => count - 1);
  }
}
