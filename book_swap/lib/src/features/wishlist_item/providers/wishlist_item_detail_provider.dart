import 'package:flutter/material.dart';
import 'package:autoverpod/autoverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../wishlist_item_schema.schema.dart';
import '../i_wishlist_item_repo.dart';

part 'wishlist_item_detail_provider.g.dart';

@stateWidget
@riverpod
class WishlistItemDetail extends _$WishlistItemDetail {
  @override
  FutureOr<WishlistItemModel> build(WishlistItemId id) {
    return ref.watch(wishlistItemRepoProvider).findOne(id).then((value) => value.getOrThrow());
  }

  /// Perform side-effect update detail provider
  void updateState(WishlistItemModel Function(WishlistItemModel oldState) newState) {
    state = state.whenData(newState);
  }
}
