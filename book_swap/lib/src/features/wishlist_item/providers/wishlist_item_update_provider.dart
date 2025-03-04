import 'package:autoverpod/autoverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../i_wishlist_item_repo.dart';
import '../wishlist_item_schema.schema.dart';
import 'wishlist_item_detail_provider.dart';
import 'wishlist_item_list_pagination_provider.dart';
import 'wishlist_item_list_provider.dart';

part 'wishlist_item_update_provider.g.dart';

@formWidget
@riverpod
class WishlistItemUpdate extends _$WishlistItemUpdateWidget {
  @override
  Future<WishlistItemUpdateParam> build(WishlistItemId wishlistItemId) async {
    final result = await ref.read(wishlistItemRepoProvider).findOne(wishlistItemId).getOrThrow();
    return WishlistItemUpdateParam(
      title: result.title,
      author: result.author,
      isbn: result.isbn,
    );
  }

  @override
  Future<WishlistItemModel> submit(WishlistItemUpdateParam state) async {
    return await ref
        .read(wishlistItemRepoProvider)
        .update(wishlistItemId, data: state)
        .getOrThrow();
  }

  @override
  void onSuccess(WishlistItemModel result) {
    ref.read(wishlistItemListProvider.notifier).updateItem(result);
    ref.read(wishlistItemDetailProvider(wishlistItemId).notifier).updateState((_) => result);

    //! Use with caution
    /// this update might lead to data inconsistency, for example, if we have update the item to not meet the param filter
    /// in this case, the item should be removed from the paginated list, but using this method will just update the item
    /// other case is if we update sort order, the item might need to change position
    WishlistItemPaginationTracker.instance.updatePaginatedItem(ref, result);
  }
}
