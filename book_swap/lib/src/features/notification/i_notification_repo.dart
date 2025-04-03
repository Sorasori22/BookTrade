import 'package:book_swap/src/features/auth/auth.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:kimapp_supabase_helper/kimapp_supabase_helper.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'notification_schema.schema.dart';
import 'params/notification_list_param.dart';

part 'i_notification_repo.g.dart';

@Riverpod(keepAlive: true)
INotificationRepo notificationRepo(Ref ref) => _Impl(ref);

abstract class INotificationRepo {
  Future<Either<Failure, Unit>> delete(NotificationId id);

  Future<Either<Failure, IList<NotificationModel>>> findPagination({
    required int limit,
    required int offset,
    required NotificationListParam param,
  });

  AsyncFailureOr<Unit> markAsRead(NotificationId id);

  AsyncFailureOr<int> unreadCount();

  AsyncFailureOr<Unit> clearAllUnread(UserId userId);
}

class _Impl implements INotificationRepo {
  _Impl(this._ref);

  final Ref _ref;

  @override
  Future<Either<Failure, Unit>> delete(NotificationId id) async {
    return await errorHandler(() async {
      await _ref.supabaseClient
          .from(NotificationTable.table)
          .delete()
          .eq(NotificationTable.id, id.value);

      return right(unit);
    });
  }

  @override
  Future<Either<Failure, IList<NotificationModel>>> findPagination({
    required int limit,
    required int offset,
    required NotificationListParam param,
  }) async {
    return await errorHandler(() async {
      final query = _ref.supabaseClient
          .from(NotificationModel.table.tableName)
          .select(NotificationModel.table.selectStatement)
          .eq(NotificationTable.userId, param.userId!.value)
          .not('notification_type', 'eq', 'message');

      return await query
          .order('id', ascending: false)
          .limit(limit)
          .range(offset, offset + limit)
          .withConverter((data) {
        final items = IList.fromJson(
          data,
          (json) => NotificationModel.fromJson(json as Map<String, dynamic>),
        );
        return right(items);
      });
    });
  }

  @override
  AsyncFailureOr<Unit> markAsRead(NotificationId id) async {
    return await errorHandler(() async {
      await _ref.supabaseClient
          .from(NotificationTable.table)
          .update({NotificationTable.read: true}).eq(NotificationTable.id, id.value);

      return right(unit);
    });
  }

  @override
  AsyncFailureOr<int> unreadCount() async {
    return await errorHandler(() async {
      return await _ref.supabaseClient
          .rpc('unread_notification_count')
          .then((value) => right(value));
    });
  }

  @override
  AsyncFailureOr<Unit> clearAllUnread(UserId userId) async {
    return await errorHandler(() async {
      await _ref.supabaseClient
          .from(NotificationTable.table)
          .update({NotificationTable.read: true})
          .eq(NotificationTable.userId, userId.value)
          .eq(NotificationTable.read, false);

      return right(unit);
    });
  }
}
