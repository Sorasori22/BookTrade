import 'package:autoverpod/autoverpod.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/helpers/ilist_provider_helper.dart';
import '../i_wishlist_item_repo.dart';
import '../wishlist_item_schema.schema.dart';

part 'wishlist_item_list_provider.g.dart';

@stateWidget
@riverpod
class WishlistItemList extends _$WishlistItemList with IListAsyncNotifier<WishlistItemModel> {
  @override
  bool identity(WishlistItemModel item) => item.id == item.id;

  @override
  FutureOr<IList<WishlistItemModel>> build() {
    return ref.watch(wishlistItemRepoProvider).findAll().getOrThrow();
  }
}
