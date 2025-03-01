import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_list_param.freezed.dart';

@freezed
class UserListParam with _$UserListParam {
  const UserListParam._();

  const factory UserListParam() = _UserListParam;
}