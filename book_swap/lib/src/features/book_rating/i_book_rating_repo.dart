import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:kimapp_supabase_helper/kimapp_supabase_helper.dart';

import 'params/book_rating_list_param.dart';
import 'book_rating_schema.schema.dart';

part 'i_book_rating_repo.g.dart';


@Riverpod(keepAlive: true)
IBookRatingRepo bookRatingRepo(Ref ref) => _Impl(ref);


abstract class IBookRatingRepo {
  Future<Either<Failure, IList<BookRatingModel>>> findAll();

  Future<Either<Failure, BookRatingModel>> findOne(BookRatingId id);

  Future<Either<Failure, BookRatingModel>> create(BookRatingCreateParam data);

  Future<Either<Failure, BookRatingModel>> update(BookRatingId bookRatingId ,{required BookRatingUpdateParam data});

  Future<Either<Failure, Unit>> delete(BookRatingId id);

  Future<Either<Failure, IList<BookRatingModel>>> findPagination({
    required int limit,
    required int offset,
    required BookRatingListParam param,
  });
}



class _Impl implements IBookRatingRepo {
  _Impl(this._ref);

  final Ref _ref;

  @override
  Future<Either<Failure,  BookRatingModel>> create(BookRatingCreateParam data) async{
   return await errorHandler(() async {
   return await _ref.supabaseClient
    .from(BookRatingModel.table.tableName)
    .insert(data.toJson())
    .select(BookRatingModel.table.selectStatement)
    .single()
    .withConverter((data) => right(BookRatingModel.fromJson(data)));
   });
  }

  @override
  Future<Either<Failure, Unit>> delete(BookRatingId id) async{
    return await errorHandler(() async {
    await _ref.supabaseClient
    .from(BookRatingTable.table)
    .delete()
    .eq(BookRatingTable.id, id.value);
    
    return right(unit);
    });
  }

  @override
  Future<Either<Failure, IList<BookRatingModel>>> findAll() async{
    return await errorHandler(() async {
    var query = _ref.supabaseClient.from(BookRatingModel.table.tableName).select(BookRatingModel.table.selectStatement);
    
    if (true) {}
    
    return await query.withConverter((data) {
      final items = IList.fromJson(
        data,
        (json) => BookRatingModel.fromJson(json as Map<String, dynamic>),
      );
      return right(items);
    });
    });
  }

  @override
  Future<Either<Failure,  BookRatingModel>> findOne(BookRatingId id) async{
   return await errorHandler(() async {
   final query = _ref.supabaseClient
   .from(BookRatingModel.table.tableName)
   .select(BookRatingModel.table.selectStatement)
   .eq(BookRatingTable.id, id.value);
   
   final result = await query.single();
   return right(BookRatingModel.fromJson(result));
   });
  }

  @override
  Future<Either<Failure, IList<BookRatingModel>>> findPagination({
    required int limit,
    required int offset,
    required BookRatingListParam param,
  }) async{
    return await errorHandler(() async {
      var query = _ref.supabaseClient.from(BookRatingModel.table.tableName).select(BookRatingModel.table.selectStatement);
    
    if (true) {}
    
    return await query
    .limit(limit)
    .range(offset, offset + limit)
    .withConverter((data) {
      final items = IList.fromJson(
        data,
        (json) => BookRatingModel.fromJson(json as Map<String, dynamic>),
      );
      return right(items);
    });
    });
  }

  @override
  Future<Either<Failure,  BookRatingModel>> update(BookRatingId bookRatingId ,{required BookRatingUpdateParam data}) async{
    return await errorHandler(() async {
    return await _ref.supabaseClient
    .from(BookRatingModel.table.tableName)
    .update(data.toJson())
    .eq(BookRatingTable.id, bookRatingId.value)
    .select(BookRatingModel.table.selectStatement)
    .single()
    .withConverter((data) => right(BookRatingModel.fromJson(data)));
    });
  }
}
