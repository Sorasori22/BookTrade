import 'package:book_swap/src/core/storage/image_object.dart';
import 'package:kimapp/kimapp.dart';

@Schema(
  tableName: 'profiles',
  className: 'Profile',
  baseModelName: 'ProfileModel',
)
class ProfileSchema extends KimappSchema {
  final id = Field.id<String>('id').generateAs('ProfileId');
  final username = Field<String>('username');
  final email = Field<String>('email');
  final fullname = Field<String?>('fullname');
  final avatar = Field<ImageObject?>('avatar_url');
  final bio = Field<String?>('bio');
  final age = Field<int?>('age');
  final location = Field<String?>('location');
  final address = Field<String?>('address');
  final phoneNumber = Field<String?>('phone_number');
  final createdAt = Field<DateTime>('created_at');
  final updatedAt = Field<DateTime>('updated_at');

  @override
  List<Model> get models {
    return [
      Model('ProfileLiteModel')
        ..table()
        ..addFields({
          'id': id,
          'username': username,
          'email': email,
          'fullname': fullname,
          'avatar': avatar,
        }),
      Model('ProfileDetailModel')
        ..table()
        ..inheritAllFromBase(),
      Model('ProfileUpdateParam')
        ..addFields({
          'username': Field<String?>('username'),
          'fullname': Field<String?>('fullname'),
          'avatar': avatar,
          'bio': bio,
          'age': age,
          'location': location,
          'address': address,
          'phoneNumber': phoneNumber,
        }),
    ];
  }
}
