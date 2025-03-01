import 'package:autoverpod/autoverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../profile/profile_schema.schema.dart';
import '../i_wishlist_item_repo.dart';
import '../wishlist_item_schema.schema.dart';
import 'wishlist_item_list_pagination_provider.dart';
import 'wishlist_item_list_provider.dart';

part 'wishlist_item_create_provider.g.dart';

@formWidget
@riverpod
class WishlistItemCreate extends _$WishlistItemCreateWidget {
  @override
  WishlistItemCreateParam build() => WishlistItemCreateParam(
        userId: ProfileId.fromValue(''),
        title: '',
        author: '',
        isbn: '',
      );

  @override
  Future<WishlistItemModel> submit(WishlistItemCreateParam state) async {
    return await ref.read(wishlistItemRepoProvider).create(state).getOrThrow();
  }

  @override
  void onSuccess(WishlistItemModel result) {
    ref.read(wishlistItemListProvider.notifier).insertItem(result);
    ref.invalidate(wishlistItemListPaginationProvider);
  }
}
