import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:kimapp_supabase_helper/kimapp_supabase_helper.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../profile/profile_schema.schema.dart';
import 'chat_schema.schema.dart';
import 'params/chat_list_param.dart';

part 'i_chat_repo.g.dart';

@Riverpod(keepAlive: true)
IChatRepo chatRepo(Ref ref) => _Impl(ref);

abstract class IChatRepo {
  AsyncFailureOr<IList<ChatModel>> findPagination({
    required int limit,
    required int offset,
    required ChatListParam param,
  });

  AsyncFailureOr<Unit> clearUnreadCount({
    required ProfileId senderId,
  });
}

class _Impl implements IChatRepo {
  _Impl(this._ref);

  final Ref _ref;

  @override
  AsyncFailureOr<IList<ChatModel>> findPagination({
    required int limit,
    required int offset,
    required ChatListParam param,
  }) async {
    return await errorHandler(() async {
      final query = await _ref.supabaseClient.rpc(
        'get_chat_list',
        params: {
          'page_limit': limit,
          'page_offset': offset,
          'p_filter': {
            // TODO: implement filter
          },
        },
      ).select();

      final items = IList.fromJson(
        query,
        (json) => ChatModel.fromJson(json as Map<String, dynamic>),
      );
      return right(items);
    });
  }

  @override
  AsyncFailureOr<Unit> clearUnreadCount({required ProfileId senderId}) async {
    return await errorHandler(() async {
      await _ref.supabaseClient.rpc(
        'clear_unread_count',
        params: {'p_sender_id': senderId.value},
      );
      return right(unit);
    });
  }
}
