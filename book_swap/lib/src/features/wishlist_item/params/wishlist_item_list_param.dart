import 'package:freezed_annotation/freezed_annotation.dart';

import '../../profile/profile_schema.schema.dart';

part 'wishlist_item_list_param.freezed.dart';

@freezed
class WishlistItemListParam with _$WishlistItemListParam {
  const factory WishlistItemListParam({
    ProfileId? userId,
    String? titleSearch,
    String? authorSearch,
    String? isbnSearch,
  }) = _WishlistItemListParam;
}
