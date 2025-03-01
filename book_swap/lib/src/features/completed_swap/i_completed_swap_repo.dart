import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:kimapp_supabase_helper/kimapp_supabase_helper.dart';

import 'params/completed_swap_list_param.dart';
import 'completed_swap_schema.schema.dart';

part 'i_completed_swap_repo.g.dart';


@Riverpod(keepAlive: true)
ICompletedSwapRepo completedSwapRepo(Ref ref) => _Impl(ref);


abstract class ICompletedSwapRepo {
  Future<Either<Failure, IList<CompletedSwapModel>>> findAll();

  Future<Either<Failure, CompletedSwapModel>> findOne(CompletedSwapId id);

  Future<Either<Failure, CompletedSwapModel>> create(CompletedSwapCreateParam data);

  Future<Either<Failure, CompletedSwapModel>> update(CompletedSwapId completedSwapId ,{required CompletedSwapUpdateParam data});

  Future<Either<Failure, Unit>> delete(CompletedSwapId id);

  Future<Either<Failure, IList<CompletedSwapModel>>> findPagination({
    required int limit,
    required int offset,
    required CompletedSwapListParam param,
  });
}



class _Impl implements ICompletedSwapRepo {
  _Impl(this._ref);

  final Ref _ref;

  @override
  Future<Either<Failure,  CompletedSwapModel>> create(CompletedSwapCreateParam data) async{
   return await errorHandler(() async {
   return await _ref.supabaseClient
    .from(CompletedSwapModel.table.tableName)
    .insert(data.toJson())
    .select(CompletedSwapModel.table.selectStatement)
    .single()
    .withConverter((data) => right(CompletedSwapModel.fromJson(data)));
   });
  }

  @override
  Future<Either<Failure, Unit>> delete(CompletedSwapId id) async{
    return await errorHandler(() async {
    await _ref.supabaseClient
    .from(CompletedSwapTable.table)
    .delete()
    .eq(CompletedSwapTable.id, id.value);
    
    return right(unit);
    });
  }

  @override
  Future<Either<Failure, IList<CompletedSwapModel>>> findAll() async{
    return await errorHandler(() async {
    final query = _ref.supabaseClient.from(CompletedSwapModel.table.tableName).select(CompletedSwapModel.table.selectStatement);
    
    if (true) {}
    
    return await query.withConverter((data) {
      final items = IList.fromJson(
        data,
        (json) => CompletedSwapModel.fromJson(json as Map<String, dynamic>),
      );
      return right(items);
    });
    });
  }

  @override
  Future<Either<Failure,  CompletedSwapModel>> findOne(CompletedSwapId id) async{
   return await errorHandler(() async {
   final query = _ref.supabaseClient
   .from(CompletedSwapModel.table.tableName)
   .select(CompletedSwapModel.table.selectStatement)
   .eq(CompletedSwapTable.id, id.value);
   
   final result = await query.single();
   return right(CompletedSwapModel.fromJson(result));
   });
  }

  @override
  Future<Either<Failure, IList<CompletedSwapModel>>> findPagination({
    required int limit,
    required int offset,
    required CompletedSwapListParam param,
  }) async{
    return await errorHandler(() async {
      final query = _ref.supabaseClient.from(CompletedSwapModel.table.tableName).select(CompletedSwapModel.table.selectStatement);
    
    if (true) {}
    
    return await query
    .limit(limit)
    .range(offset, offset + limit)
    .withConverter((data) {
      final items = IList.fromJson(
        data,
        (json) => CompletedSwapModel.fromJson(json as Map<String, dynamic>),
      );
      return right(items);
    });
    });
  }

  @override
  Future<Either<Failure,  CompletedSwapModel>> update(CompletedSwapId completedSwapId ,{required CompletedSwapUpdateParam data}) async{
    return await errorHandler(() async {
    return await _ref.supabaseClient
    .from(CompletedSwapModel.table.tableName)
    .update(data.toJson())
    .eq(CompletedSwapTable.id, completedSwapId.value)
    .select(CompletedSwapModel.table.selectStatement)
    .single()
    .withConverter((data) => right(CompletedSwapModel.fromJson(data)));
    });
  }
}
