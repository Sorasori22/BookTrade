// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ForgotPasswordParam {
  String get email => throw _privateConstructorUsedError;

  /// Create a copy of ForgotPasswordParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForgotPasswordParamCopyWith<ForgotPasswordParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordParamCopyWith<$Res> {
  factory $ForgotPasswordParamCopyWith(
          ForgotPasswordParam value, $Res Function(ForgotPasswordParam) then) =
      _$ForgotPasswordParamCopyWithImpl<$Res, ForgotPasswordParam>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$ForgotPasswordParamCopyWithImpl<$Res, $Val extends ForgotPasswordParam>
    implements $ForgotPasswordParamCopyWith<$Res> {
  _$ForgotPasswordParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForgotPasswordParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForgotPasswordParamImplCopyWith<$Res>
    implements $ForgotPasswordParamCopyWith<$Res> {
  factory _$$ForgotPasswordParamImplCopyWith(_$ForgotPasswordParamImpl value,
          $Res Function(_$ForgotPasswordParamImpl) then) =
      __$$ForgotPasswordParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ForgotPasswordParamImplCopyWithImpl<$Res>
    extends _$ForgotPasswordParamCopyWithImpl<$Res, _$ForgotPasswordParamImpl>
    implements _$$ForgotPasswordParamImplCopyWith<$Res> {
  __$$ForgotPasswordParamImplCopyWithImpl(_$ForgotPasswordParamImpl _value,
      $Res Function(_$ForgotPasswordParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForgotPasswordParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ForgotPasswordParamImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordParamImpl implements _ForgotPasswordParam {
  const _$ForgotPasswordParamImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'ForgotPasswordParam(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordParamImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of ForgotPasswordParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordParamImplCopyWith<_$ForgotPasswordParamImpl> get copyWith =>
      __$$ForgotPasswordParamImplCopyWithImpl<_$ForgotPasswordParamImpl>(
          this, _$identity);
}

abstract class _ForgotPasswordParam implements ForgotPasswordParam {
  const factory _ForgotPasswordParam({required final String email}) =
      _$ForgotPasswordParamImpl;

  @override
  String get email;

  /// Create a copy of ForgotPasswordParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForgotPasswordParamImplCopyWith<_$ForgotPasswordParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VerifyResetCodeParam {
  String get email => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  /// Create a copy of VerifyResetCodeParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerifyResetCodeParamCopyWith<VerifyResetCodeParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyResetCodeParamCopyWith<$Res> {
  factory $VerifyResetCodeParamCopyWith(VerifyResetCodeParam value,
          $Res Function(VerifyResetCodeParam) then) =
      _$VerifyResetCodeParamCopyWithImpl<$Res, VerifyResetCodeParam>;
  @useResult
  $Res call({String email, String code});
}

/// @nodoc
class _$VerifyResetCodeParamCopyWithImpl<$Res,
        $Val extends VerifyResetCodeParam>
    implements $VerifyResetCodeParamCopyWith<$Res> {
  _$VerifyResetCodeParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifyResetCodeParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyResetCodeParamImplCopyWith<$Res>
    implements $VerifyResetCodeParamCopyWith<$Res> {
  factory _$$VerifyResetCodeParamImplCopyWith(_$VerifyResetCodeParamImpl value,
          $Res Function(_$VerifyResetCodeParamImpl) then) =
      __$$VerifyResetCodeParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String code});
}

/// @nodoc
class __$$VerifyResetCodeParamImplCopyWithImpl<$Res>
    extends _$VerifyResetCodeParamCopyWithImpl<$Res, _$VerifyResetCodeParamImpl>
    implements _$$VerifyResetCodeParamImplCopyWith<$Res> {
  __$$VerifyResetCodeParamImplCopyWithImpl(_$VerifyResetCodeParamImpl _value,
      $Res Function(_$VerifyResetCodeParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerifyResetCodeParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
  }) {
    return _then(_$VerifyResetCodeParamImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyResetCodeParamImpl implements _VerifyResetCodeParam {
  const _$VerifyResetCodeParamImpl({required this.email, required this.code});

  @override
  final String email;
  @override
  final String code;

  @override
  String toString() {
    return 'VerifyResetCodeParam(email: $email, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyResetCodeParamImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, code);

  /// Create a copy of VerifyResetCodeParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyResetCodeParamImplCopyWith<_$VerifyResetCodeParamImpl>
      get copyWith =>
          __$$VerifyResetCodeParamImplCopyWithImpl<_$VerifyResetCodeParamImpl>(
              this, _$identity);
}

abstract class _VerifyResetCodeParam implements VerifyResetCodeParam {
  const factory _VerifyResetCodeParam(
      {required final String email,
      required final String code}) = _$VerifyResetCodeParamImpl;

  @override
  String get email;
  @override
  String get code;

  /// Create a copy of VerifyResetCodeParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyResetCodeParamImplCopyWith<_$VerifyResetCodeParamImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ResetPasswordParam {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Create a copy of ResetPasswordParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResetPasswordParamCopyWith<ResetPasswordParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordParamCopyWith<$Res> {
  factory $ResetPasswordParamCopyWith(
          ResetPasswordParam value, $Res Function(ResetPasswordParam) then) =
      _$ResetPasswordParamCopyWithImpl<$Res, ResetPasswordParam>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$ResetPasswordParamCopyWithImpl<$Res, $Val extends ResetPasswordParam>
    implements $ResetPasswordParamCopyWith<$Res> {
  _$ResetPasswordParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResetPasswordParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResetPasswordParamImplCopyWith<$Res>
    implements $ResetPasswordParamCopyWith<$Res> {
  factory _$$ResetPasswordParamImplCopyWith(_$ResetPasswordParamImpl value,
          $Res Function(_$ResetPasswordParamImpl) then) =
      __$$ResetPasswordParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$ResetPasswordParamImplCopyWithImpl<$Res>
    extends _$ResetPasswordParamCopyWithImpl<$Res, _$ResetPasswordParamImpl>
    implements _$$ResetPasswordParamImplCopyWith<$Res> {
  __$$ResetPasswordParamImplCopyWithImpl(_$ResetPasswordParamImpl _value,
      $Res Function(_$ResetPasswordParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResetPasswordParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$ResetPasswordParamImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResetPasswordParamImpl implements _ResetPasswordParam {
  const _$ResetPasswordParamImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'ResetPasswordParam(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordParamImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of ResetPasswordParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordParamImplCopyWith<_$ResetPasswordParamImpl> get copyWith =>
      __$$ResetPasswordParamImplCopyWithImpl<_$ResetPasswordParamImpl>(
          this, _$identity);
}

abstract class _ResetPasswordParam implements ResetPasswordParam {
  const factory _ResetPasswordParam(
      {required final String email,
      required final String password}) = _$ResetPasswordParamImpl;

  @override
  String get email;
  @override
  String get password;

  /// Create a copy of ResetPasswordParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResetPasswordParamImplCopyWith<_$ResetPasswordParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
