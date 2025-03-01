import 'package:kimapp/kimapp.dart';

import '../profile/profile_schema.schema.dart';

@Schema(
  tableName: 'wishlist_items',
  className: 'WishlistItem',
  baseModelName: 'WishlistItemModel',
)
class WishlistItemSchema extends KimappSchema {
  final id = Field.id<int>('id').generateAs('WishlistItemId');
  final userId = Field<ProfileId>('user_id');
  final title = Field<String>('title');
  final author = Field<String?>('author');
  final isbn = Field<String?>('isbn');
  final createdAt = Field<DateTime>('created_at');

  // Join fields
  final user = Field.join<ProfileLiteModel>().withForeignKey('user_id').withCandidateKey('id');

  @override
  List<Model> get models => [
        Model('WishlistItemLiteModel')
          ..table()
          ..addFields({
            'id': id,
            'userId': userId,
            'title': title,
            'author': author,
            'createdAt': createdAt,
          }),
        Model('WishlistItemDetailModel')
          ..table()
          ..inheritAllFromBase()
          ..addFields({
            'user': user,
          }),
        Model('WishlistItemCreateParam')
          ..addFields({
            'userId': userId,
            'title': title,
            'author': author,
            'isbn': isbn,
          }),
        Model('WishlistItemUpdateParam')
          ..addFields({
            'title': Field<String?>('title'),
            'author': author,
            'isbn': isbn,
          }),
      ];
}
