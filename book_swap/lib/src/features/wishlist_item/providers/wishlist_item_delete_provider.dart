import 'package:fpdart/fpdart.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../wishlist_item_schema.schema.dart';
import '../i_wishlist_item_repo.dart';
import 'wishlist_item_detail_provider.dart';
import 'wishlist_item_list_pagination_provider.dart';
import 'wishlist_item_list_provider.dart';

part 'wishlist_item_delete_provider.g.dart';

@riverpod
class WishlistItemDelete extends _$WishlistItemDelete {
  @override
  ProviderStatus<Unit> build(WishlistItemId id) => const ProviderStatus.initial();


  Future<ProviderStatus<Unit>> call() async {
    return await perform((state) async {
     final result = await ref.read(wishlistItemRepoProvider).delete(id);
     return result.getOrThrow();
}, onSuccess: (success) {
    ref.read(wishlistItemListProvider.notifier).removeWhere((e) => e.id == id);
    ref.invalidate(wishlistItemDetailProvider(id));

    /// Can set the invalidateOnLength to 0, but if it just 1, the invalidate is not expensive, it deserve to be used
    /// since it will help accurate the data consistency
    WishlistItemPaginationTracker.instance.deletePaginatedItem(ref, id, invalidateOnLength: 1);
  },);
  }
}