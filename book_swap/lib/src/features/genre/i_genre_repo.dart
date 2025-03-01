import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:kimapp_supabase_helper/kimapp_supabase_helper.dart';

import 'params/genre_list_param.dart';
import 'genre_schema.schema.dart';

part 'i_genre_repo.g.dart';


@Riverpod(keepAlive: true)
IGenreRepo genreRepo(Ref ref) => _Impl(ref);


abstract class IGenreRepo {
  Future<Either<Failure, IList<GenreModel>>> findAll();

  Future<Either<Failure, GenreModel>> findOne(GenreId id);

  Future<Either<Failure, GenreModel>> create(GenreCreateParam data);

  Future<Either<Failure, GenreModel>> update(GenreId genreId ,{required GenreUpdateParam data});

  Future<Either<Failure, Unit>> delete(GenreId id);

  Future<Either<Failure, IList<GenreModel>>> findPagination({
    required int limit,
    required int offset,
    required GenreListParam param,
  });
}



class _Impl implements IGenreRepo {
  _Impl(this._ref);

  final Ref _ref;

  @override
  Future<Either<Failure,  GenreModel>> create(GenreCreateParam data) async{
   return await errorHandler(() async {
   return await _ref.supabaseClient
    .from(GenreModel.table.tableName)
    .insert(data.toJson())
    .select(GenreModel.table.selectStatement)
    .single()
    .withConverter((data) => right(GenreModel.fromJson(data)));
   });
  }

  @override
  Future<Either<Failure, Unit>> delete(GenreId id) async{
    return await errorHandler(() async {
    await _ref.supabaseClient
    .from(GenreTable.table)
    .delete()
    .eq(GenreTable.id, id.value);
    
    return right(unit);
    });
  }

  @override
  Future<Either<Failure, IList<GenreModel>>> findAll() async{
    return await errorHandler(() async {
    var query = _ref.supabaseClient.from(GenreModel.table.tableName).select(GenreModel.table.selectStatement);
    
    if (true) {}
    
    return await query.withConverter((data) {
      final items = IList.fromJson(
        data,
        (json) => GenreModel.fromJson(json as Map<String, dynamic>),
      );
      return right(items);
    });
    });
  }

  @override
  Future<Either<Failure,  GenreModel>> findOne(GenreId id) async{
   return await errorHandler(() async {
   final query = _ref.supabaseClient
   .from(GenreModel.table.tableName)
   .select(GenreModel.table.selectStatement)
   .eq(GenreTable.id, id.value);
   
   final result = await query.single();
   return right(GenreModel.fromJson(result));
   });
  }

  @override
  Future<Either<Failure, IList<GenreModel>>> findPagination({
    required int limit,
    required int offset,
    required GenreListParam param,
  }) async{
    return await errorHandler(() async {
      var query = _ref.supabaseClient.from(GenreModel.table.tableName).select(GenreModel.table.selectStatement);
    
    if (true) {}
    
    return await query
    .limit(limit)
    .range(offset, offset + limit)
    .withConverter((data) {
      final items = IList.fromJson(
        data,
        (json) => GenreModel.fromJson(json as Map<String, dynamic>),
      );
      return right(items);
    });
    });
  }

  @override
  Future<Either<Failure,  GenreModel>> update(GenreId genreId ,{required GenreUpdateParam data}) async{
    return await errorHandler(() async {
    return await _ref.supabaseClient
    .from(GenreModel.table.tableName)
    .update(data.toJson())
    .eq(GenreTable.id, genreId.value)
    .select(GenreModel.table.selectStatement)
    .single()
    .withConverter((data) => right(GenreModel.fromJson(data)));
    });
  }
}
