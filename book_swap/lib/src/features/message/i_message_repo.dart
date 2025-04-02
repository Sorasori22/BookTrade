import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:kimapp_supabase_helper/kimapp_supabase_helper.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'message_schema.schema.dart';
import 'params/message_list_param.dart';

part 'i_message_repo.g.dart';

@Riverpod(keepAlive: true)
IMessageRepo messageRepo(Ref ref) => _Impl(ref);

abstract class IMessageRepo {
  Future<Either<Failure, IList<MessageModel>>> findAll();

  Future<Either<Failure, MessageModel>> findOne(MessageId id);

  Future<Either<Failure, MessageModel>> create(MessageCreateParam data);

  Future<Either<Failure, MessageModel>> update(
    MessageId messageId, {
    required MessageUpdateParam data,
  });

  Future<Either<Failure, Unit>> delete(MessageId id);

  Future<Either<Failure, IList<MessageModel>>> findPagination({
    required int limit,
    required int offset,
    required MessageListParam param,
  });
}

class _Impl implements IMessageRepo {
  _Impl(this._ref);

  final Ref _ref;

  @override
  Future<Either<Failure, MessageModel>> create(MessageCreateParam data) async {
    return await errorHandler(() async {
      return await _ref.supabaseClient
          .from(MessageModel.table.tableName)
          .insert(data.toJson())
          .select(MessageModel.table.selectStatement)
          .single()
          .withConverter((data) => right(MessageModel.fromJson(data)));
    });
  }

  @override
  Future<Either<Failure, Unit>> delete(MessageId id) async {
    return await errorHandler(() async {
      await _ref.supabaseClient.from(MessageTable.table).delete().eq(MessageTable.id, id.value);

      return right(unit);
    });
  }

  @override
  Future<Either<Failure, IList<MessageModel>>> findAll() async {
    return await errorHandler(() async {
      final query = _ref.supabaseClient
          .from(MessageModel.table.tableName)
          .select(MessageModel.table.selectStatement);

      if (true) {}

      return await query.withConverter((data) {
        final items = IList.fromJson(
          data,
          (json) => MessageModel.fromJson(json as Map<String, dynamic>),
        );
        return right(items);
      });
    });
  }

  @override
  Future<Either<Failure, MessageModel>> findOne(MessageId id) async {
    return await errorHandler(() async {
      final query = _ref.supabaseClient
          .from(MessageModel.table.tableName)
          .select(MessageModel.table.selectStatement)
          .eq(MessageTable.id, id.value);

      final result = await query.single();
      return right(MessageModel.fromJson(result));
    });
  }

  @override
  Future<Either<Failure, IList<MessageModel>>> findPagination({
    required int limit,
    required int offset,
    required MessageListParam param,
  }) async {
    return await errorHandler(() async {
      final query = _ref.supabaseClient
          .from(MessageModel.table.tableName)
          .select(MessageModel.table.selectStatement)
          .or('sender_id.eq.${param.participantId.value},recipient_id.eq.${param.participantId.value}');

      return await query
          .order('id', ascending: false)
          .limit(limit)
          .range(offset, offset + limit)
          .withConverter((data) {
        final items = IList.fromJson(
          data,
          (json) => MessageModel.fromJson(json as Map<String, dynamic>),
        );
        return right(items);
      });
    });
  }

  @override
  Future<Either<Failure, MessageModel>> update(
    MessageId messageId, {
    required MessageUpdateParam data,
  }) async {
    return await errorHandler(() async {
      return await _ref.supabaseClient
          .from(MessageModel.table.tableName)
          .update(data.toJson())
          .eq(MessageTable.id, messageId.value)
          .select(MessageModel.table.selectStatement)
          .single()
          .withConverter((data) => right(MessageModel.fromJson(data)));
    });
  }
}
