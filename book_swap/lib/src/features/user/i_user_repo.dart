import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:kimapp_supabase_helper/kimapp_supabase_helper.dart';

import 'params/user_list_param.dart';
import 'user_schema.schema.dart';

part 'i_user_repo.g.dart';


@Riverpod(keepAlive: true)
IUserRepo userRepo(Ref ref) => _Impl(ref);


abstract class IUserRepo {
  Future<Either<Failure, IList<UserModel>>> findAll();

  Future<Either<Failure, UserModel>> findOne(UserId id);

  Future<Either<Failure, UserModel>> create(UserCreateParam data);

  Future<Either<Failure, UserModel>> update(UserId userId ,{required UserUpdateParam data});

  Future<Either<Failure, Unit>> delete(UserId id);

  Future<Either<Failure, IList<UserModel>>> findPagination({
    required int limit,
    required int offset,
    required UserListParam param,
  });
}



class _Impl implements IUserRepo {
  _Impl(this._ref);

  final Ref _ref;

  @override
  Future<Either<Failure,  UserModel>> create(UserCreateParam data) async{
   return await errorHandler(() async {
   return await _ref.supabaseClient
    .from(UserModel.table.tableName)
    .insert(data.toJson())
    .select(UserModel.table.selectStatement)
    .single()
    .withConverter((data) => right(UserModel.fromJson(data)));
   });
  }

  @override
  Future<Either<Failure, Unit>> delete(UserId id) async{
    return await errorHandler(() async {
    await _ref.supabaseClient
    .from(UserTable.table)
    .delete()
    .eq(UserTable.id, id.value);
    
    return right(unit);
    });
  }

  @override
  Future<Either<Failure, IList<UserModel>>> findAll() async{
    return await errorHandler(() async {
    var query = _ref.supabaseClient.from(UserModel.table.tableName).select(UserModel.table.selectStatement);
    
    if (true) {}
    
    return await query.withConverter((data) {
      final items = IList.fromJson(
        data,
        (json) => UserModel.fromJson(json as Map<String, dynamic>),
      );
      return right(items);
    });
    });
  }

  @override
  Future<Either<Failure,  UserModel>> findOne(UserId id) async{
   return await errorHandler(() async {
   final query = _ref.supabaseClient
   .from(UserModel.table.tableName)
   .select(UserModel.table.selectStatement)
   .eq(UserTable.id, id.value);
   
   final result = await query.single();
   return right(UserModel.fromJson(result));
   });
  }

  @override
  Future<Either<Failure, IList<UserModel>>> findPagination({
    required int limit,
    required int offset,
    required UserListParam param,
  }) async{
    return await errorHandler(() async {
      var query = _ref.supabaseClient.from(UserModel.table.tableName).select(UserModel.table.selectStatement);
    
    if (true) {}
    
    return await query
    .limit(limit)
    .range(offset, offset + limit)
    .withConverter((data) {
      final items = IList.fromJson(
        data,
        (json) => UserModel.fromJson(json as Map<String, dynamic>),
      );
      return right(items);
    });
    });
  }

  @override
  Future<Either<Failure,  UserModel>> update(UserId userId ,{required UserUpdateParam data}) async{
    return await errorHandler(() async {
    return await _ref.supabaseClient
    .from(UserModel.table.tableName)
    .update(data.toJson())
    .eq(UserTable.id, userId.value)
    .select(UserModel.table.selectStatement)
    .single()
    .withConverter((data) => right(UserModel.fromJson(data)));
    });
  }
}
