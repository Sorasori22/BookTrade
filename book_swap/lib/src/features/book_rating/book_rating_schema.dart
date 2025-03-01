import 'package:kimapp/kimapp.dart';

import '../book/book_schema.schema.dart';
import '../profile/profile_schema.schema.dart';

@Schema(
  tableName: 'book_ratings',
  className: 'BookRating',
  baseModelName: 'BookRatingModel',
)
class BookRatingSchema extends KimappSchema {
  final id = Field.id<int>('id').generateAs('BookRatingId');
  final userId = Field<ProfileId>('user_id');
  final bookId = Field<BookId>('book_id');
  final rating = Field<int>('rating');
  final comment = Field<String?>('comment');
  final createdAt = Field<DateTime>('created_at');

  // Join fields
  final user = Field.join<ProfileLiteModel>().withForeignKey('user_id').withCandidateKey('id');
  final book = Field.join<BookLiteModel>().withForeignKey('book_id').withCandidateKey('id');

  @override
  List<Model> get models => [
        Model('BookRatingLiteModel')
          ..table()
          ..addFields({
            'id': id,
            'userId': userId,
            'bookId': bookId,
            'rating': rating,
            'createdAt': createdAt,
          }),
        Model('BookRatingDetailModel')
          ..table()
          ..inheritAllFromBase()
          ..addFields({
            'user': user,
            'book': book,
          }),
        Model('BookRatingCreateParam')
          ..addFields({
            'userId': userId,
            'bookId': bookId,
            'rating': rating,
            'comment': comment,
          }),
        Model('BookRatingUpdateParam')
          ..addFields({
            'rating': Field<int?>('rating'),
            'comment': comment,
          }),
      ];
}
