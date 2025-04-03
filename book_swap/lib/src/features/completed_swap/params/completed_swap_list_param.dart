import 'package:freezed_annotation/freezed_annotation.dart';

import '../../book/book_schema.schema.dart';
import '../../profile/profile_schema.schema.dart';

part 'completed_swap_list_param.freezed.dart';

@freezed
class CompletedSwapListParam with _$CompletedSwapListParam {
  const factory CompletedSwapListParam({
    /// Find for both requester and owner
    required ProfileId profileId,
  }) = _CompletedSwapListParam;
}
