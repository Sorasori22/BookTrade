import 'package:book_swap/src/features/profile/profile_schema.schema.dart';
import 'package:kimapp/kimapp.dart';

class UserId extends Identity<String> {
  const UserId._(this.value);

  @override
  final String value;

  factory UserId.fromJson(dynamic value) {
    return UserId._(value);
  }
  factory UserId.fromValue(String value) {
    return UserId._(value);
  }

  ProfileId toProfileId() {
    return ProfileId.fromValue(value);
  }
}
