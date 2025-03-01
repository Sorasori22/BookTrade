import 'package:kimapp/kimapp.dart';

@Schema(
  tableName: 'book_genres',
  className: 'BookGenre',
  baseModelName: 'BookGenreModel',
)
class BookGenreSchema extends KimappSchema {
  final id = Field.id<int>('id').generateAs('BookGenreId');
  final name = Field<String>('name');

  @override
  List<Model> get models {
    return [
      Model('BookGenreLiteModel')
        ..table()
        ..addFields({'id': id, 'name': name}),
      Model('BookGenreDetailModel')
        ..table()
        ..inheritAllFromBase()
        ..addFields({
          'createdAt': Field<DateTime>('created_at'),
        }),

      // Params
      Model('BookGenreCreateParam')..addFields({}),
      Model('BookGenreUpdateParam')..addFields({}),
    ];
  }
}
