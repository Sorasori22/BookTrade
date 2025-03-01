import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:kimapp_supabase_helper/kimapp_supabase_helper.dart';

import 'params/book_genre_list_param.dart';
import 'book_genre_schema.schema.dart';

part 'i_book_genre_repo.g.dart';


@Riverpod(keepAlive: true)
IBookGenreRepo bookGenreRepo(Ref ref) => _Impl(ref);


abstract class IBookGenreRepo {
  Future<Either<Failure, IList<BookGenreModel>>> findAll();

  Future<Either<Failure, BookGenreModel>> findOne(BookGenreId id);

  Future<Either<Failure, BookGenreModel>> create(BookGenreCreateParam data);

  Future<Either<Failure, BookGenreModel>> update(BookGenreId bookGenreId ,{required BookGenreUpdateParam data});

  Future<Either<Failure, Unit>> delete(BookGenreId id);

  Future<Either<Failure, IList<BookGenreModel>>> findPagination({
    required int limit,
    required int offset,
    required BookGenreListParam param,
  });
}



class _Impl implements IBookGenreRepo {
  _Impl(this._ref);

  final Ref _ref;

  @override
  Future<Either<Failure,  BookGenreModel>> create(BookGenreCreateParam data) async{
   return await errorHandler(() async {
   return await _ref.supabaseClient
    .from(BookGenreModel.table.tableName)
    .insert(data.toJson())
    .select(BookGenreModel.table.selectStatement)
    .single()
    .withConverter((data) => right(BookGenreModel.fromJson(data)));
   });
  }

  @override
  Future<Either<Failure, Unit>> delete(BookGenreId id) async{
    return await errorHandler(() async {
    await _ref.supabaseClient
    .from(BookGenreTable.table)
    .delete()
    .eq(BookGenreTable.id, id.value);
    
    return right(unit);
    });
  }

  @override
  Future<Either<Failure, IList<BookGenreModel>>> findAll() async{
    return await errorHandler(() async {
    var query = _ref.supabaseClient.from(BookGenreModel.table.tableName).select(BookGenreModel.table.selectStatement);
    
    if (true) {}
    
    return await query.withConverter((data) {
      final items = IList.fromJson(
        data,
        (json) => BookGenreModel.fromJson(json as Map<String, dynamic>),
      );
      return right(items);
    });
    });
  }

  @override
  Future<Either<Failure,  BookGenreModel>> findOne(BookGenreId id) async{
   return await errorHandler(() async {
   final query = _ref.supabaseClient
   .from(BookGenreModel.table.tableName)
   .select(BookGenreModel.table.selectStatement)
   .eq(BookGenreTable.id, id.value);
   
   final result = await query.single();
   return right(BookGenreModel.fromJson(result));
   });
  }

  @override
  Future<Either<Failure, IList<BookGenreModel>>> findPagination({
    required int limit,
    required int offset,
    required BookGenreListParam param,
  }) async{
    return await errorHandler(() async {
      var query = _ref.supabaseClient.from(BookGenreModel.table.tableName).select(BookGenreModel.table.selectStatement);
    
    if (true) {}
    
    return await query
    .limit(limit)
    .range(offset, offset + limit)
    .withConverter((data) {
      final items = IList.fromJson(
        data,
        (json) => BookGenreModel.fromJson(json as Map<String, dynamic>),
      );
      return right(items);
    });
    });
  }

  @override
  Future<Either<Failure,  BookGenreModel>> update(BookGenreId bookGenreId ,{required BookGenreUpdateParam data}) async{
    return await errorHandler(() async {
    return await _ref.supabaseClient
    .from(BookGenreModel.table.tableName)
    .update(data.toJson())
    .eq(BookGenreTable.id, bookGenreId.value)
    .select(BookGenreModel.table.selectStatement)
    .single()
    .withConverter((data) => right(BookGenreModel.fromJson(data)));
    });
  }
}
