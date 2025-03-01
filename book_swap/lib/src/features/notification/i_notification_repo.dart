import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:kimapp_supabase_helper/kimapp_supabase_helper.dart';

import 'params/notification_list_param.dart';
import 'notification_schema.schema.dart';

part 'i_notification_repo.g.dart';


@Riverpod(keepAlive: true)
INotificationRepo notificationRepo(Ref ref) => _Impl(ref);


abstract class INotificationRepo {
  Future<Either<Failure, IList<NotificationModel>>> findAll();

  Future<Either<Failure, NotificationModel>> findOne(NotificationId id);

  Future<Either<Failure, NotificationModel>> create(NotificationCreateParam data);

  Future<Either<Failure, NotificationModel>> update(NotificationId notificationId ,{required NotificationUpdateParam data});

  Future<Either<Failure, Unit>> delete(NotificationId id);

  Future<Either<Failure, IList<NotificationModel>>> findPagination({
    required int limit,
    required int offset,
    required NotificationListParam param,
  });
}



class _Impl implements INotificationRepo {
  _Impl(this._ref);

  final Ref _ref;

  @override
  Future<Either<Failure,  NotificationModel>> create(NotificationCreateParam data) async{
   return await errorHandler(() async {
   return await _ref.supabaseClient
    .from(NotificationModel.table.tableName)
    .insert(data.toJson())
    .select(NotificationModel.table.selectStatement)
    .single()
    .withConverter((data) => right(NotificationModel.fromJson(data)));
   });
  }

  @override
  Future<Either<Failure, Unit>> delete(NotificationId id) async{
    return await errorHandler(() async {
    await _ref.supabaseClient
    .from(NotificationTable.table)
    .delete()
    .eq(NotificationTable.id, id.value);
    
    return right(unit);
    });
  }

  @override
  Future<Either<Failure, IList<NotificationModel>>> findAll() async{
    return await errorHandler(() async {
    var query = _ref.supabaseClient.from(NotificationModel.table.tableName).select(NotificationModel.table.selectStatement);
    
    if (true) {}
    
    return await query.withConverter((data) {
      final items = IList.fromJson(
        data,
        (json) => NotificationModel.fromJson(json as Map<String, dynamic>),
      );
      return right(items);
    });
    });
  }

  @override
  Future<Either<Failure,  NotificationModel>> findOne(NotificationId id) async{
   return await errorHandler(() async {
   final query = _ref.supabaseClient
   .from(NotificationModel.table.tableName)
   .select(NotificationModel.table.selectStatement)
   .eq(NotificationTable.id, id.value);
   
   final result = await query.single();
   return right(NotificationModel.fromJson(result));
   });
  }

  @override
  Future<Either<Failure, IList<NotificationModel>>> findPagination({
    required int limit,
    required int offset,
    required NotificationListParam param,
  }) async{
    return await errorHandler(() async {
      var query = _ref.supabaseClient.from(NotificationModel.table.tableName).select(NotificationModel.table.selectStatement);
    
    if (true) {}
    
    return await query
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
  Future<Either<Failure,  NotificationModel>> update(NotificationId notificationId ,{required NotificationUpdateParam data}) async{
    return await errorHandler(() async {
    return await _ref.supabaseClient
    .from(NotificationModel.table.tableName)
    .update(data.toJson())
    .eq(NotificationTable.id, notificationId.value)
    .select(NotificationModel.table.selectStatement)
    .single()
    .withConverter((data) => right(NotificationModel.fromJson(data)));
    });
  }
}
