import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_genre_list_param.freezed.dart';

@freezed
class BookGenreListParam with _$BookGenreListParam {
  const BookGenreListParam._();

  const factory BookGenreListParam() = _BookGenreListParam;
}