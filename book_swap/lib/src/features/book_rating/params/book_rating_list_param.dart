import 'package:freezed_annotation/freezed_annotation.dart';

import '../../book/book_schema.schema.dart';
import '../../profile/profile_schema.schema.dart';

part 'book_rating_list_param.freezed.dart';

@freezed
class BookRatingListParam with _$BookRatingListParam {
  const factory BookRatingListParam({
    ProfileId? userId,
    BookId? bookId,
    int? minRating,
    int? maxRating,
  }) = _BookRatingListParam;
}
