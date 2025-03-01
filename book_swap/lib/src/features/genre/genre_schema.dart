import 'package:kimapp/kimapp.dart';

@Schema(
  tableName: 'genres',
  className: 'Genre',
  baseModelName: 'GenreModel',
)
class GenreSchema extends KimappSchema {
  final id = Field.id<int>('id').generateAs('GenreId');
  final name = Field<String>('name');

  @override
  List<Model> get models {
    return [
      Model('GenreLiteModel')
        ..table()
        ..addFields({'id': id, 'name': name}),
      Model('GenreDetailModel')
        ..table()
        ..inheritAllFromBase(),

      // Params
      Model('GenreCreateParam')
        ..addFields({
          'name': name,
        }),
      Model('GenreUpdateParam')
        ..addFields({
          'name': Field<String?>('name'),
        }),
    ];
  }
}
