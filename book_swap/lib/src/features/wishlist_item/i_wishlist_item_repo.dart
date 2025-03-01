import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:kimapp_supabase_helper/kimapp_supabase_helper.dart';

import 'params/wishlist_item_list_param.dart';
import 'wishlist_item_schema.schema.dart';

part 'i_wishlist_item_repo.g.dart';


@Riverpod(keepAlive: true)
IWishlistItemRepo wishlistItemRepo(Ref ref) => _Impl(ref);


abstract class IWishlistItemRepo {
  Future<Either<Failure, IList<WishlistItemModel>>> findAll();

  Future<Either<Failure, WishlistItemModel>> findOne(WishlistItemId id);

  Future<Either<Failure, WishlistItemModel>> create(WishlistItemCreateParam data);

  Future<Either<Failure, WishlistItemModel>> update(WishlistItemId wishlistItemId ,{required WishlistItemUpdateParam data});

  Future<Either<Failure, Unit>> delete(WishlistItemId id);

  Future<Either<Failure, IList<WishlistItemModel>>> findPagination({
    required int limit,
    required int offset,
    required WishlistItemListParam param,
  });
}



class _Impl implements IWishlistItemRepo {
  _Impl(this._ref);

  final Ref _ref;

  @override
  Future<Either<Failure,  WishlistItemModel>> create(WishlistItemCreateParam data) async{
   return await errorHandler(() async {
   return await _ref.supabaseClient
    .from(WishlistItemModel.table.tableName)
    .insert(data.toJson())
    .select(WishlistItemModel.table.selectStatement)
    .single()
    .withConverter((data) => right(WishlistItemModel.fromJson(data)));
   });
  }

  @override
  Future<Either<Failure, Unit>> delete(WishlistItemId id) async{
    return await errorHandler(() async {
    await _ref.supabaseClient
    .from(WishlistItemTable.table)
    .delete()
    .eq(WishlistItemTable.id, id.value);
    
    return right(unit);
    });
  }

  @override
  Future<Either<Failure, IList<WishlistItemModel>>> findAll() async{
    return await errorHandler(() async {
    var query = _ref.supabaseClient.from(WishlistItemModel.table.tableName).select(WishlistItemModel.table.selectStatement);
    
    if (true) {}
    
    return await query.withConverter((data) {
      final items = IList.fromJson(
        data,
        (json) => WishlistItemModel.fromJson(json as Map<String, dynamic>),
      );
      return right(items);
    });
    });
  }

  @override
  Future<Either<Failure,  WishlistItemModel>> findOne(WishlistItemId id) async{
   return await errorHandler(() async {
   final query = _ref.supabaseClient
   .from(WishlistItemModel.table.tableName)
   .select(WishlistItemModel.table.selectStatement)
   .eq(WishlistItemTable.id, id.value);
   
   final result = await query.single();
   return right(WishlistItemModel.fromJson(result));
   });
  }

  @override
  Future<Either<Failure, IList<WishlistItemModel>>> findPagination({
    required int limit,
    required int offset,
    required WishlistItemListParam param,
  }) async{
    return await errorHandler(() async {
      var query = _ref.supabaseClient.from(WishlistItemModel.table.tableName).select(WishlistItemModel.table.selectStatement);
    
    if (true) {}
    
    return await query
    .limit(limit)
    .range(offset, offset + limit)
    .withConverter((data) {
      final items = IList.fromJson(
        data,
        (json) => WishlistItemModel.fromJson(json as Map<String, dynamic>),
      );
      return right(items);
    });
    });
  }

  @override
  Future<Either<Failure,  WishlistItemModel>> update(WishlistItemId wishlistItemId ,{required WishlistItemUpdateParam data}) async{
    return await errorHandler(() async {
    return await _ref.supabaseClient
    .from(WishlistItemModel.table.tableName)
    .update(data.toJson())
    .eq(WishlistItemTable.id, wishlistItemId.value)
    .select(WishlistItemModel.table.selectStatement)
    .single()
    .withConverter((data) => right(WishlistItemModel.fromJson(data)));
    });
  }
}
