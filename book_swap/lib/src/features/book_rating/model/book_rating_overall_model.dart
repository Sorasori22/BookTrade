import 'package:book_swap/src/features/book_rating/book_rating_schema.schema.dart';
import 'package:dartx/dartx.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_rating_overall_model.freezed.dart';
part 'book_rating_overall_model.g.dart';

@freezed
sealed class BookRatingOverallModel with _$BookRatingOverallModel {
  const BookRatingOverallModel._();

  const factory BookRatingOverallModel({
    @JsonKey(name: 'average') required double average,
    @JsonKey(name: 'rating_1_count') required int rating1Count,
    @JsonKey(name: 'rating_2_count') required int rating2Count,
    @JsonKey(name: 'rating_3_count') required int rating3Count,
    @JsonKey(name: 'rating_4_count') required int rating4Count,
    @JsonKey(name: 'rating_5_count') required int rating5Count,

    /// My rating as map, it has rating and comment key
    @JsonKey(name: 'mine') required Map<String, dynamic>? mine,
  }) = _BookRatingOverallModel;

  factory BookRatingOverallModel.fromJson(Map<String, dynamic> json) =>
      _$BookRatingOverallModelFromJson(json);

  bool get hasMyRating => mine != null && mine!.isNotEmpty;

  int? get myRating => mine?.getOrElse('rating', () => -1);
  BookRatingId? get myRatingId {
    final json = mine?.getOrElse('id', () => null);
    if (json != null) {
      return BookRatingId.fromJson(json);
    }
    return null;
  }

  String? get comment => mine?.getOrElse('comment', () => '');
  DateTime? get createdAt {
    final json = mine?.getOrElse('created_at', () => DateTime.now().toIso8601String());
    if (json != null) {
      return DateTime.tryParse(json);
    }
    return null;
  }

  int get totalRating => rating1Count + rating2Count + rating3Count + rating4Count + rating5Count;
}
