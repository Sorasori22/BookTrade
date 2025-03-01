import 'package:freezed_annotation/freezed_annotation.dart';

import '../../profile/profile_schema.schema.dart';

part 'book_list_param.freezed.dart';

@freezed
class BookListParam with _$BookListParam {
  const BookListParam._();

  const factory BookListParam({
    String? titleSearch,
    String? authorSearch,
    ProfileId? ownerId,
    int? minCondition,
    int? maxCondition,
  }) = _BookListParam;
}
