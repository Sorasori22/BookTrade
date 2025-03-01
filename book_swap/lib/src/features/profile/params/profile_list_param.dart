import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_list_param.freezed.dart';

@freezed
class ProfileListParam with _$ProfileListParam {
  const ProfileListParam._();

  const factory ProfileListParam({
    String? usernameSearch,
    String? locationSearch,
  }) = _ProfileListParam;
}
