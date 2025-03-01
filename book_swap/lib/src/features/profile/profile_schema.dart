import 'package:kimapp/kimapp.dart';

@Schema(
  tableName: 'profiles',
  className: 'Profile',
  baseModelName: 'ProfileModel',
)
class ProfileSchema extends KimappSchema {
  final id = Field.id<String>('id').generateAs('ProfileId');
  final username = Field<String>('username');
  final fullName = Field<String?>('full_name');
  final avatarUrl = Field<String?>('avatar_url');
  final bio = Field<String?>('bio');
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
          'fullName': fullName,
          'avatarUrl': avatarUrl,
        }),
      Model('ProfileDetailModel')
        ..table()
        ..inheritAllFromBase(),

      // Params
      Model('ProfileCreateParam')
        ..addFields({
          'id': id,
          'username': username,
          'fullName': fullName,
          'avatarUrl': avatarUrl,
          'bio': bio,
          'location': location,
          'address': address,
          'phoneNumber': phoneNumber,
        }),
      Model('ProfileUpdateParam')
        ..addFields({
          'username': Field<String?>('username'),
          'fullName': fullName,
          'avatarUrl': avatarUrl,
          'bio': bio,
          'location': location,
          'address': address,
          'phoneNumber': phoneNumber,
        }),
    ];
  }
}
