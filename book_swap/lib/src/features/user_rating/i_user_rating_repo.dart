import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:kimapp_supabase_helper/kimapp_supabase_helper.dart';

import 'params/user_rating_list_param.dart';
import 'user_rating_schema.schema.dart';

part 'i_user_rating_repo.g.dart';


@Riverpod(keepAlive: true)
IUserRatingRepo userRatingRepo(Ref ref) => _Impl(ref);


abstract class IUserRatingRepo {
  Future<Either<Failure, IList<UserRatingModel>>> findAll();

  Future<Either<Failure, UserRatingModel>> findOne(UserRatingId id);

  Future<Either<Failure, UserRatingModel>> create(UserRatingCreateParam data);

  Future<Either<Failure, UserRatingModel>> update(UserRatingId userRatingId ,{required UserRatingUpdateParam data});

  Future<Either<Failure, Unit>> delete(UserRatingId id);

  Future<Either<Failure, IList<UserRatingModel>>> findPagination({
    required int limit,
    required int offset,
    required UserRatingListParam param,
  });
}



class _Impl implements IUserRatingRepo {
  _Impl(this._ref);

  final Ref _ref;

  @override
  Future<Either<Failure,  UserRatingModel>> create(UserRatingCreateParam data) async{
   return await errorHandler(() async {
   return await _ref.supabaseClient
    .from(UserRatingModel.table.tableName)
    .insert(data.toJson())
    .select(UserRatingModel.table.selectStatement)
    .single()
    .withConverter((data) => right(UserRatingModel.fromJson(data)));
   });
  }

  @override
  Future<Either<Failure, Unit>> delete(UserRatingId id) async{
    return await errorHandler(() async {
    await _ref.supabaseClient
    .from(UserRatingTable.table)
    .delete()
    .eq(UserRatingTable.id, id.value);
    
    return right(unit);
    });
  }

  @override
  Future<Either<Failure, IList<UserRatingModel>>> findAll() async{
    return await errorHandler(() async {
    final query = _ref.supabaseClient.from(UserRatingModel.table.tableName).select(UserRatingModel.table.selectStatement);
    
    if (true) {}
    
    return await query.withConverter((data) {
      final items = IList.fromJson(
        data,
        (json) => UserRatingModel.fromJson(json as Map<String, dynamic>),
      );
      return right(items);
    });
    });
  }

  @override
  Future<Either<Failure,  UserRatingModel>> findOne(UserRatingId id) async{
   return await errorHandler(() async {
   final query = _ref.supabaseClient
   .from(UserRatingModel.table.tableName)
   .select(UserRatingModel.table.selectStatement)
   .eq(UserRatingTable.id, id.value);
   
   final result = await query.single();
   return right(UserRatingModel.fromJson(result));
   });
  }

  @override
  Future<Either<Failure, IList<UserRatingModel>>> findPagination({
    required int limit,
    required int offset,
    required UserRatingListParam param,
  }) async{
    return await errorHandler(() async {
      final query = _ref.supabaseClient.from(UserRatingModel.table.tableName).select(UserRatingModel.table.selectStatement);
    
    if (true) {}
    
    return await query
    .limit(limit)
    .range(offset, offset + limit)
    .withConverter((data) {
      final items = IList.fromJson(
        data,
        (json) => UserRatingModel.fromJson(json as Map<String, dynamic>),
      );
      return right(items);
    });
    });
  }

  @override
  Future<Either<Failure,  UserRatingModel>> update(UserRatingId userRatingId ,{required UserRatingUpdateParam data}) async{
    return await errorHandler(() async {
    return await _ref.supabaseClient
    .from(UserRatingModel.table.tableName)
    .update(data.toJson())
    .eq(UserRatingTable.id, userRatingId.value)
    .select(UserRatingModel.table.selectStatement)
    .single()
    .withConverter((data) => right(UserRatingModel.fromJson(data)));
    });
  }
}
