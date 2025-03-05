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
  final description = Field<String?>('description');
  final image = Field<ImageObject?>('image_url');
  final createdAt = Field<DateTime>('created_at');
  final updatedAt = Field<DateTime>('updated_at');

  // Join field for owner
  final owner = Field.join<ProfileLiteModel?>().withForeignKey('owner_id').withCandidateKey('id');

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
        }),
      Model('BookDetailModel')
        ..table()
        ..inheritAllFromBase()
        ..addFields({
          'owner': owner,
          'description': description,
        }),

      // Params
      Model('BookCreateParam')
        ..addFields({
          'ownerId': ownerId,
          'title': title,
          'author': author,
          'description': description,
          'image': image,
        }),
      Model('BookUpdateParam')
        ..addFields({
          'title': Field<String?>('title'),
          'author': Field<String?>('author'),
          'description': description,
          'image': image,
        }),
    ];
  }
}
