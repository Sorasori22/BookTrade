import 'package:freezed_annotation/freezed_annotation.dart';

part 'genre_list_param.freezed.dart';

@freezed
class GenreListParam with _$GenreListParam {
  const GenreListParam._();

  const factory GenreListParam({
    String? nameSearch,
  }) = _GenreListParam;
}
