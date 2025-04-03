import 'package:book_swap/src/core/storage/image_object.dart';
import 'package:kimapp/kimapp.dart';

import '../profile/profile_schema.schema.dart';

@Schema(
  tableName: 'books',
  className: 'Book',
  baseModelName: 'BookModel',
)
class BookSchema extends KimappSchema {
  final id = Field.id<int>('id').generateAs('BookId');
  final ownerId = Field<ProfileId>('owner_id');
  final title = Field<String>('title');
  final author = Field<String>('author');
  final condition = Field<int>('condition');
  final averageRating = Field<double?>('average_rating');
  final image = Field<ImageObject?>('image_path');
  final createdAt = Field<DateTime>('created_at');
  final updatedAt = Field<DateTime>('updated_at');
  final description = Field<String?>('description');

  @override
  List<Model> get models {
    return [
      Model('BookLiteModel')
        ..table()
        ..addFields({
          'id': id,
          'title': title,
          'author': author,
          'image': image,
          'ownerId': ownerId,
          'averageRating': averageRating,
        }),
      Model('BookDetailModel')
        ..table()
        ..inheritAllFromBase()
        ..addFields({
          'owner':
              Field.join<ProfileLiteModel?>().withForeignKey('owner_id').withCandidateKey('id'),
        }),

      // Params
      Model('BookCreateParam')
        ..addFields({
          'ownerId': ownerId,
          'title': title,
          'author': author,
          'description': Field<String?>('description'),
          'image': image,
          'condition': Field<int?>('condition'),
        }),
      Model('BookUpdateParam')
        ..addFields({
          'ownerId': ownerId, // not gonna change, but keep for just help hold the state
          'title': title,
          'author': author,
          'description': Field<String?>('description'),
          'image': image,
          'condition': condition,
        }),
    ];
  }
}
