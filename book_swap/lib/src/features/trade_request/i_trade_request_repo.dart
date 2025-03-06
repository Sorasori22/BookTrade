import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:kimapp_supabase_helper/kimapp_supabase_helper.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'params/trade_request_list_param.dart';
import 'trade_request_schema.schema.dart';

part 'i_trade_request_repo.g.dart';

@Riverpod(keepAlive: true)
ITradeRequestRepo tradeRequestRepo(Ref ref) => _Impl(ref);

abstract class ITradeRequestRepo {
  Future<Either<Failure, IList<TradeRequestModel>>> findAll(TradeRequestListParam param);

  Future<Either<Failure, TradeRequestModel>> findOne(TradeRequestId id);

  Future<Either<Failure, TradeRequestModel>> create(TradeRequestCreateParam data);

  Future<Either<Failure, TradeRequestModel>> update(
    TradeRequestId tradeRequestId, {
    required TradeRequestUpdateParam data,
  });

  Future<Either<Failure, Unit>> delete(TradeRequestId id);
}

class _Impl implements ITradeRequestRepo {
  _Impl(this._ref);

  final Ref _ref;

  @override
  Future<Either<Failure, TradeRequestModel>> create(TradeRequestCreateParam data) async {
    return await errorHandler(() async {
      return await _ref.supabaseClient
          .from(TradeRequestModel.table.tableName)
          .insert(data.toJson())
          .select(TradeRequestModel.table.selectStatement)
          .single()
          .withConverter((data) => right(TradeRequestModel.fromJson(data)));
    });
  }

  @override
  Future<Either<Failure, Unit>> delete(TradeRequestId id) async {
    return await errorHandler(() async {
      await _ref.supabaseClient
          .from(TradeRequestTable.table)
          .delete()
          .eq(TradeRequestTable.id, id.value);

      return right(unit);
    });
  }

  @override
  Future<Either<Failure, IList<TradeRequestModel>>> findAll(TradeRequestListParam param) async {
    return await errorHandler(() async {
      final query = _ref.supabaseClient
          .from(TradeRequestModel.table.tableName)
          .select(TradeRequestModel.table.selectStatement);

      if (param.requesterId != null) {
        query.eq(TradeRequestTable.requesterId, param.requesterId!.value);
      }

      if (param.ownerId != null) {
        query.eq(TradeRequestTable.ownerId, param.ownerId!.value);
      }

      if (param.bookId != null) {
        query.eq(TradeRequestTable.bookId, param.bookId!.value);
      }

      if (param.offeredBookId != null) {
        query.eq(TradeRequestTable.offeredBookId, param.offeredBookId!.value);
      }

      if (param.status != null) {
        query.eq(TradeRequestTable.status, param.status!.name);
      }

      return await query.withConverter((data) {
        final items = IList.fromJson(
          data,
          (json) => TradeRequestModel.fromJson(json as Map<String, dynamic>),
        );
        return right(items);
      });
    });
  }

  @override
  Future<Either<Failure, TradeRequestModel>> findOne(TradeRequestId id) async {
    return await errorHandler(() async {
      final query = _ref.supabaseClient
          .from(TradeRequestModel.table.tableName)
          .select(TradeRequestModel.table.selectStatement)
          .eq(TradeRequestTable.id, id.value);

      final result = await query.single();
      return right(TradeRequestModel.fromJson(result));
    });
  }

  @override
  Future<Either<Failure, TradeRequestModel>> update(
    TradeRequestId tradeRequestId, {
    required TradeRequestUpdateParam data,
  }) async {
    return await errorHandler(() async {
      return await _ref.supabaseClient
          .from(TradeRequestModel.table.tableName)
          .update(data.toJson())
          .eq(TradeRequestTable.id, tradeRequestId.value)
          .select(TradeRequestModel.table.selectStatement)
          .single()
          .withConverter((data) => right(TradeRequestModel.fromJson(data)));
    });
  }
}
