// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_schema.schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @JsonKey(name: UserModel.idKey)
  UserId get id => throw _privateConstructorUsedError;
  @JsonKey(name: UserModel.nameKey)
  String get name => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: UserModel.idKey) UserId id,
      @JsonKey(name: UserModel.nameKey) String name});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UserId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: UserModel.idKey) UserId id,
      @JsonKey(name: UserModel.nameKey) String name});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$UserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UserId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@TableModel(UserModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$UserModelImpl extends _UserModel {
  const _$UserModelImpl(
      {@JsonKey(name: UserModel.idKey) required this.id,
      @JsonKey(name: UserModel.nameKey) required this.name})
      : super._();

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  @JsonKey(name: UserModel.idKey)
  final UserId id;
  @override
  @JsonKey(name: UserModel.nameKey)
  final String name;

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel extends UserModel {
  const factory _UserModel(
          {@JsonKey(name: UserModel.idKey) required final UserId id,
          @JsonKey(name: UserModel.nameKey) required final String name}) =
      _$UserModelImpl;
  const _UserModel._() : super._();

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  @JsonKey(name: UserModel.idKey)
  UserId get id;
  @override
  @JsonKey(name: UserModel.nameKey)
  String get name;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserLiteModel _$UserLiteModelFromJson(Map<String, dynamic> json) {
  return _UserLiteModel.fromJson(json);
}

/// @nodoc
mixin _$UserLiteModel {
  @JsonKey(name: UserLiteModel.idKey)
  UserId get id => throw _privateConstructorUsedError;
  @JsonKey(name: UserLiteModel.nameKey)
  String get name => throw _privateConstructorUsedError;

  /// Serializes this UserLiteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserLiteModelCopyWith<UserLiteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLiteModelCopyWith<$Res> {
  factory $UserLiteModelCopyWith(
          UserLiteModel value, $Res Function(UserLiteModel) then) =
      _$UserLiteModelCopyWithImpl<$Res, UserLiteModel>;
  @useResult
  $Res call(
      {@JsonKey(name: UserLiteModel.idKey) UserId id,
      @JsonKey(name: UserLiteModel.nameKey) String name});
}

/// @nodoc
class _$UserLiteModelCopyWithImpl<$Res, $Val extends UserLiteModel>
    implements $UserLiteModelCopyWith<$Res> {
  _$UserLiteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UserId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserLiteModelImplCopyWith<$Res>
    implements $UserLiteModelCopyWith<$Res> {
  factory _$$UserLiteModelImplCopyWith(
          _$UserLiteModelImpl value, $Res Function(_$UserLiteModelImpl) then) =
      __$$UserLiteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: UserLiteModel.idKey) UserId id,
      @JsonKey(name: UserLiteModel.nameKey) String name});
}

/// @nodoc
class __$$UserLiteModelImplCopyWithImpl<$Res>
    extends _$UserLiteModelCopyWithImpl<$Res, _$UserLiteModelImpl>
    implements _$$UserLiteModelImplCopyWith<$Res> {
  __$$UserLiteModelImplCopyWithImpl(
      _$UserLiteModelImpl _value, $Res Function(_$UserLiteModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$UserLiteModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UserId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@TableModel(UserLiteModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$UserLiteModelImpl extends _UserLiteModel {
  const _$UserLiteModelImpl(
      {@JsonKey(name: UserLiteModel.idKey) required this.id,
      @JsonKey(name: UserLiteModel.nameKey) required this.name})
      : super._();

  factory _$UserLiteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserLiteModelImplFromJson(json);

  @override
  @JsonKey(name: UserLiteModel.idKey)
  final UserId id;
  @override
  @JsonKey(name: UserLiteModel.nameKey)
  final String name;

  @override
  String toString() {
    return 'UserLiteModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLiteModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of UserLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLiteModelImplCopyWith<_$UserLiteModelImpl> get copyWith =>
      __$$UserLiteModelImplCopyWithImpl<_$UserLiteModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLiteModelImplToJson(
      this,
    );
  }
}

abstract class _UserLiteModel extends UserLiteModel {
  const factory _UserLiteModel(
          {@JsonKey(name: UserLiteModel.idKey) required final UserId id,
          @JsonKey(name: UserLiteModel.nameKey) required final String name}) =
      _$UserLiteModelImpl;
  const _UserLiteModel._() : super._();

  factory _UserLiteModel.fromJson(Map<String, dynamic> json) =
      _$UserLiteModelImpl.fromJson;

  @override
  @JsonKey(name: UserLiteModel.idKey)
  UserId get id;
  @override
  @JsonKey(name: UserLiteModel.nameKey)
  String get name;

  /// Create a copy of UserLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLiteModelImplCopyWith<_$UserLiteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserDetailModel _$UserDetailModelFromJson(Map<String, dynamic> json) {
  return _UserDetailModel.fromJson(json);
}

/// @nodoc
mixin _$UserDetailModel {
  @JsonKey(name: UserDetailModel.idKey)
  UserId get id => throw _privateConstructorUsedError;
  @JsonKey(name: UserDetailModel.nameKey)
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: UserDetailModel.createdAtKey)
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this UserDetailModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDetailModelCopyWith<UserDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailModelCopyWith<$Res> {
  factory $UserDetailModelCopyWith(
          UserDetailModel value, $Res Function(UserDetailModel) then) =
      _$UserDetailModelCopyWithImpl<$Res, UserDetailModel>;
  @useResult
  $Res call(
      {@JsonKey(name: UserDetailModel.idKey) UserId id,
      @JsonKey(name: UserDetailModel.nameKey) String name,
      @JsonKey(name: UserDetailModel.createdAtKey) DateTime createdAt});
}

/// @nodoc
class _$UserDetailModelCopyWithImpl<$Res, $Val extends UserDetailModel>
    implements $UserDetailModelCopyWith<$Res> {
  _$UserDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UserId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDetailModelImplCopyWith<$Res>
    implements $UserDetailModelCopyWith<$Res> {
  factory _$$UserDetailModelImplCopyWith(_$UserDetailModelImpl value,
          $Res Function(_$UserDetailModelImpl) then) =
      __$$UserDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: UserDetailModel.idKey) UserId id,
      @JsonKey(name: UserDetailModel.nameKey) String name,
      @JsonKey(name: UserDetailModel.createdAtKey) DateTime createdAt});
}

/// @nodoc
class __$$UserDetailModelImplCopyWithImpl<$Res>
    extends _$UserDetailModelCopyWithImpl<$Res, _$UserDetailModelImpl>
    implements _$$UserDetailModelImplCopyWith<$Res> {
  __$$UserDetailModelImplCopyWithImpl(
      _$UserDetailModelImpl _value, $Res Function(_$UserDetailModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? createdAt = null,
  }) {
    return _then(_$UserDetailModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UserId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@TableModel(UserDetailModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$UserDetailModelImpl extends _UserDetailModel {
  const _$UserDetailModelImpl(
      {@JsonKey(name: UserDetailModel.idKey) required this.id,
      @JsonKey(name: UserDetailModel.nameKey) required this.name,
      @JsonKey(name: UserDetailModel.createdAtKey) required this.createdAt})
      : super._();

  factory _$UserDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDetailModelImplFromJson(json);

  @override
  @JsonKey(name: UserDetailModel.idKey)
  final UserId id;
  @override
  @JsonKey(name: UserDetailModel.nameKey)
  final String name;
  @override
  @JsonKey(name: UserDetailModel.createdAtKey)
  final DateTime createdAt;

  @override
  String toString() {
    return 'UserDetailModel(id: $id, name: $name, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, createdAt);

  /// Create a copy of UserDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailModelImplCopyWith<_$UserDetailModelImpl> get copyWith =>
      __$$UserDetailModelImplCopyWithImpl<_$UserDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDetailModelImplToJson(
      this,
    );
  }
}

abstract class _UserDetailModel extends UserDetailModel {
  const factory _UserDetailModel(
      {@JsonKey(name: UserDetailModel.idKey) required final UserId id,
      @JsonKey(name: UserDetailModel.nameKey) required final String name,
      @JsonKey(name: UserDetailModel.createdAtKey)
      required final DateTime createdAt}) = _$UserDetailModelImpl;
  const _UserDetailModel._() : super._();

  factory _UserDetailModel.fromJson(Map<String, dynamic> json) =
      _$UserDetailModelImpl.fromJson;

  @override
  @JsonKey(name: UserDetailModel.idKey)
  UserId get id;
  @override
  @JsonKey(name: UserDetailModel.nameKey)
  String get name;
  @override
  @JsonKey(name: UserDetailModel.createdAtKey)
  DateTime get createdAt;

  /// Create a copy of UserDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDetailModelImplCopyWith<_$UserDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserCreateParam _$UserCreateParamFromJson(Map<String, dynamic> json) {
  return _UserCreateParam.fromJson(json);
}

/// @nodoc
mixin _$UserCreateParam {
  /// Serializes this UserCreateParam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCreateParamCopyWith<$Res> {
  factory $UserCreateParamCopyWith(
          UserCreateParam value, $Res Function(UserCreateParam) then) =
      _$UserCreateParamCopyWithImpl<$Res, UserCreateParam>;
}

/// @nodoc
class _$UserCreateParamCopyWithImpl<$Res, $Val extends UserCreateParam>
    implements $UserCreateParamCopyWith<$Res> {
  _$UserCreateParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserCreateParam
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UserCreateParamImplCopyWith<$Res> {
  factory _$$UserCreateParamImplCopyWith(_$UserCreateParamImpl value,
          $Res Function(_$UserCreateParamImpl) then) =
      __$$UserCreateParamImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserCreateParamImplCopyWithImpl<$Res>
    extends _$UserCreateParamCopyWithImpl<$Res, _$UserCreateParamImpl>
    implements _$$UserCreateParamImplCopyWith<$Res> {
  __$$UserCreateParamImplCopyWithImpl(
      _$UserCreateParamImpl _value, $Res Function(_$UserCreateParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserCreateParam
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UserCreateParamImpl extends _UserCreateParam {
  const _$UserCreateParamImpl() : super._();

  factory _$UserCreateParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserCreateParamImplFromJson(json);

  @override
  String toString() {
    return 'UserCreateParam()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserCreateParamImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$UserCreateParamImplToJson(
      this,
    );
  }
}

abstract class _UserCreateParam extends UserCreateParam {
  const factory _UserCreateParam() = _$UserCreateParamImpl;
  const _UserCreateParam._() : super._();

  factory _UserCreateParam.fromJson(Map<String, dynamic> json) =
      _$UserCreateParamImpl.fromJson;
}

UserUpdateParam _$UserUpdateParamFromJson(Map<String, dynamic> json) {
  return _UserUpdateParam.fromJson(json);
}

/// @nodoc
mixin _$UserUpdateParam {
  /// Serializes this UserUpdateParam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserUpdateParamCopyWith<$Res> {
  factory $UserUpdateParamCopyWith(
          UserUpdateParam value, $Res Function(UserUpdateParam) then) =
      _$UserUpdateParamCopyWithImpl<$Res, UserUpdateParam>;
}

/// @nodoc
class _$UserUpdateParamCopyWithImpl<$Res, $Val extends UserUpdateParam>
    implements $UserUpdateParamCopyWith<$Res> {
  _$UserUpdateParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserUpdateParam
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UserUpdateParamImplCopyWith<$Res> {
  factory _$$UserUpdateParamImplCopyWith(_$UserUpdateParamImpl value,
          $Res Function(_$UserUpdateParamImpl) then) =
      __$$UserUpdateParamImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserUpdateParamImplCopyWithImpl<$Res>
    extends _$UserUpdateParamCopyWithImpl<$Res, _$UserUpdateParamImpl>
    implements _$$UserUpdateParamImplCopyWith<$Res> {
  __$$UserUpdateParamImplCopyWithImpl(
      _$UserUpdateParamImpl _value, $Res Function(_$UserUpdateParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserUpdateParam
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UserUpdateParamImpl extends _UserUpdateParam {
  const _$UserUpdateParamImpl() : super._();

  factory _$UserUpdateParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserUpdateParamImplFromJson(json);

  @override
  String toString() {
    return 'UserUpdateParam()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserUpdateParamImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$UserUpdateParamImplToJson(
      this,
    );
  }
}

abstract class _UserUpdateParam extends UserUpdateParam {
  const factory _UserUpdateParam() = _$UserUpdateParamImpl;
  const _UserUpdateParam._() : super._();

  factory _UserUpdateParam.fromJson(Map<String, dynamic> json) =
      _$UserUpdateParamImpl.fromJson;
}
