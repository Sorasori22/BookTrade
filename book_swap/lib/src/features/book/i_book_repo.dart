import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:kimapp_supabase_helper/kimapp_supabase_helper.dart';

import 'params/book_list_param.dart';
import 'book_schema.schema.dart';

part 'i_book_repo.g.dart';


@Riverpod(keepAlive: true)
IBookRepo bookRepo(Ref ref) => _Impl(ref);


abstract class IBookRepo {
  Future<Either<Failure, IList<BookModel>>> findAll();

  Future<Either<Failure, BookModel>> findOne(BookId id);

  Future<Either<Failure, BookModel>> create(BookCreateParam data);

  Future<Either<Failure, BookModel>> update(BookId bookId ,{required BookUpdateParam data});

  Future<Either<Failure, Unit>> delete(BookId id);

  Future<Either<Failure, IList<BookModel>>> findPagination({
    required int limit,
    required int offset,
    required BookListParam param,
  });
}



class _Impl implements IBookRepo {
  _Impl(this._ref);

  final Ref _ref;

  @override
  Future<Either<Failure,  BookModel>> create(BookCreateParam data) async{
   return await errorHandler(() async {
   return await _ref.supabaseClient
    .from(BookModel.table.tableName)
    .insert(data.toJson())
    .select(BookModel.table.selectStatement)
    .single()
    .withConverter((data) => right(BookModel.fromJson(data)));
   });
  }

  @override
  Future<Either<Failure, Unit>> delete(BookId id) async{
    return await errorHandler(() async {
    await _ref.supabaseClient
    .from(BookTable.table)
    .delete()
    .eq(BookTable.id, id.value);
    
    return right(unit);
    });
  }

  @override
  Future<Either<Failure, IList<BookModel>>> findAll() async{
    return await errorHandler(() async {
    var query = _ref.supabaseClient.from(BookModel.table.tableName).select(BookModel.table.selectStatement);
    
    if (true) {}
    
    return await query.withConverter((data) {
      final items = IList.fromJson(
        data,
        (json) => BookModel.fromJson(json as Map<String, dynamic>),
      );
      return right(items);
    });
    });
  }

  @override
  Future<Either<Failure,  BookModel>> findOne(BookId id) async{
   return await errorHandler(() async {
   final query = _ref.supabaseClient
   .from(BookModel.table.tableName)
   .select(BookModel.table.selectStatement)
   .eq(BookTable.id, id.value);
   
   final result = await query.single();
   return right(BookModel.fromJson(result));
   });
  }

  @override
  Future<Either<Failure, IList<BookModel>>> findPagination({
    required int limit,
    required int offset,
    required BookListParam param,
  }) async{
    return await errorHandler(() async {
      var query = _ref.supabaseClient.from(BookModel.table.tableName).select(BookModel.table.selectStatement);
    
    if (true) {}
    
    return await query
    .limit(limit)
    .range(offset, offset + limit)
    .withConverter((data) {
      final items = IList.fromJson(
        data,
        (json) => BookModel.fromJson(json as Map<String, dynamic>),
      );
      return right(items);
    });
    });
  }

  @override
  Future<Either<Failure,  BookModel>> update(BookId bookId ,{required BookUpdateParam data}) async{
    return await errorHandler(() async {
    return await _ref.supabaseClient
    .from(BookModel.table.tableName)
    .update(data.toJson())
    .eq(BookTable.id, bookId.value)
    .select(BookModel.table.selectStatement)
    .single()
    .withConverter((data) => right(BookModel.fromJson(data)));
    });
  }
}
