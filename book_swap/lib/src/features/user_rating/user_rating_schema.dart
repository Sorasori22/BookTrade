import 'package:kimapp/kimapp.dart';

import '../profile/profile_schema.schema.dart';

@Schema(
  tableName: 'user_ratings',
  className: 'UserRating',
  baseModelName: 'UserRatingModel',
)
class UserRatingSchema extends KimappSchema {
  final id = Field.id<int>('id').generateAs('UserRatingId');
  final raterId = Field<ProfileId>('rater_id');
  final ratedUserId = Field<ProfileId>('rated_user_id');
  final tradeRequestId = Field<int?>('trade_request_id');
  final rating = Field<int>('rating');
  final comment = Field<String?>('comment');
  final createdAt = Field<DateTime>('created_at');

  // Join fields
  final rater = Field.join<ProfileLiteModel>().withForeignKey('rater_id').withCandidateKey('id');
  final ratedUser =
      Field.join<ProfileLiteModel>().withForeignKey('rated_user_id').withCandidateKey('id');

  @override
  List<Model> get models => [
        Model('UserRatingLiteModel')
          ..table()
          ..addFields({
            'id': id,
            'raterId': raterId,
            'ratedUserId': ratedUserId,
            'rating': rating,
            'createdAt': createdAt,
          }),
        Model('UserRatingDetailModel')
          ..table()
          ..inheritAllFromBase()
          ..addFields({
            'rater': rater,
            'ratedUser': ratedUser,
          }),
        Model('UserRatingCreateParam')
          ..addFields({
            'raterId': raterId,
            'ratedUserId': ratedUserId,
            'tradeRequestId': tradeRequestId,
            'rating': rating,
            'comment': comment,
          }),
        Model('UserRatingUpdateParam')
          ..addFields({
            'rating': Field<int?>('rating'),
            'comment': comment,
          }),
      ];
}
