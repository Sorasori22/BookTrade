import 'package:kimapp/kimapp.dart';

@Schema(
  tableName: 'users',
  className: 'User',
  baseModelName: 'UserModel',
)
class UserSchema extends KimappSchema {
  final id = Field.id<int>('id').generateAs('UserId');
  final name = Field<String>('name');

  @override
  List<Model> get models {
    return [
      Model('UserLiteModel')
        ..table()
        ..addFields({'id': id, 'name': name}),
      Model('UserDetailModel')
        ..table()
        ..inheritAllFromBase()
        ..addFields({
          'createdAt': Field<DateTime>('created_at'),
        }),

      // Params
      Model('UserCreateParam')..addFields({}),
      Model('UserUpdateParam')..addFields({}),
    ];
  }
}
