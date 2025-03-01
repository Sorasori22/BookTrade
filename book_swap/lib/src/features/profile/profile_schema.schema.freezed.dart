// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_schema.schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) {
  return _ProfileModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileModel {
  @JsonKey(name: ProfileModel.idKey)
  ProfileId get id => throw _privateConstructorUsedError;
  @JsonKey(name: ProfileModel.usernameKey)
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: ProfileModel.fullNameKey)
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: ProfileModel.avatarUrlKey)
  String? get avatarUrl => throw _privateConstructorUsedError;
  @JsonKey(name: ProfileModel.bioKey)
  String? get bio => throw _privateConstructorUsedError;
  @JsonKey(name: ProfileModel.locationKey)
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: ProfileModel.addressKey)
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: ProfileModel.phoneNumberKey)
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: ProfileModel.createdAtKey)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: ProfileModel.updatedAtKey)
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ProfileModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileModelCopyWith<ProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileModelCopyWith<$Res> {
  factory $ProfileModelCopyWith(
          ProfileModel value, $Res Function(ProfileModel) then) =
      _$ProfileModelCopyWithImpl<$Res, ProfileModel>;
  @useResult
  $Res call(
      {@JsonKey(name: ProfileModel.idKey) ProfileId id,
      @JsonKey(name: ProfileModel.usernameKey) String username,
      @JsonKey(name: ProfileModel.fullNameKey) String? fullName,
      @JsonKey(name: ProfileModel.avatarUrlKey) String? avatarUrl,
      @JsonKey(name: ProfileModel.bioKey) String? bio,
      @JsonKey(name: ProfileModel.locationKey) String? location,
      @JsonKey(name: ProfileModel.addressKey) String? address,
      @JsonKey(name: ProfileModel.phoneNumberKey) String? phoneNumber,
      @JsonKey(name: ProfileModel.createdAtKey) DateTime createdAt,
      @JsonKey(name: ProfileModel.updatedAtKey) DateTime updatedAt});
}

/// @nodoc
class _$ProfileModelCopyWithImpl<$Res, $Val extends ProfileModel>
    implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? fullName = freezed,
    Object? avatarUrl = freezed,
    Object? bio = freezed,
    Object? location = freezed,
    Object? address = freezed,
    Object? phoneNumber = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileModelImplCopyWith<$Res>
    implements $ProfileModelCopyWith<$Res> {
  factory _$$ProfileModelImplCopyWith(
          _$ProfileModelImpl value, $Res Function(_$ProfileModelImpl) then) =
      __$$ProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: ProfileModel.idKey) ProfileId id,
      @JsonKey(name: ProfileModel.usernameKey) String username,
      @JsonKey(name: ProfileModel.fullNameKey) String? fullName,
      @JsonKey(name: ProfileModel.avatarUrlKey) String? avatarUrl,
      @JsonKey(name: ProfileModel.bioKey) String? bio,
      @JsonKey(name: ProfileModel.locationKey) String? location,
      @JsonKey(name: ProfileModel.addressKey) String? address,
      @JsonKey(name: ProfileModel.phoneNumberKey) String? phoneNumber,
      @JsonKey(name: ProfileModel.createdAtKey) DateTime createdAt,
      @JsonKey(name: ProfileModel.updatedAtKey) DateTime updatedAt});
}

/// @nodoc
class __$$ProfileModelImplCopyWithImpl<$Res>
    extends _$ProfileModelCopyWithImpl<$Res, _$ProfileModelImpl>
    implements _$$ProfileModelImplCopyWith<$Res> {
  __$$ProfileModelImplCopyWithImpl(
      _$ProfileModelImpl _value, $Res Function(_$ProfileModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? fullName = freezed,
    Object? avatarUrl = freezed,
    Object? bio = freezed,
    Object? location = freezed,
    Object? address = freezed,
    Object? phoneNumber = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ProfileModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@TableModel(ProfileModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$ProfileModelImpl extends _ProfileModel {
  const _$ProfileModelImpl(
      {@JsonKey(name: ProfileModel.idKey) required this.id,
      @JsonKey(name: ProfileModel.usernameKey) required this.username,
      @JsonKey(name: ProfileModel.fullNameKey) required this.fullName,
      @JsonKey(name: ProfileModel.avatarUrlKey) required this.avatarUrl,
      @JsonKey(name: ProfileModel.bioKey) required this.bio,
      @JsonKey(name: ProfileModel.locationKey) required this.location,
      @JsonKey(name: ProfileModel.addressKey) required this.address,
      @JsonKey(name: ProfileModel.phoneNumberKey) required this.phoneNumber,
      @JsonKey(name: ProfileModel.createdAtKey) required this.createdAt,
      @JsonKey(name: ProfileModel.updatedAtKey) required this.updatedAt})
      : super._();

  factory _$ProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileModelImplFromJson(json);

  @override
  @JsonKey(name: ProfileModel.idKey)
  final ProfileId id;
  @override
  @JsonKey(name: ProfileModel.usernameKey)
  final String username;
  @override
  @JsonKey(name: ProfileModel.fullNameKey)
  final String? fullName;
  @override
  @JsonKey(name: ProfileModel.avatarUrlKey)
  final String? avatarUrl;
  @override
  @JsonKey(name: ProfileModel.bioKey)
  final String? bio;
  @override
  @JsonKey(name: ProfileModel.locationKey)
  final String? location;
  @override
  @JsonKey(name: ProfileModel.addressKey)
  final String? address;
  @override
  @JsonKey(name: ProfileModel.phoneNumberKey)
  final String? phoneNumber;
  @override
  @JsonKey(name: ProfileModel.createdAtKey)
  final DateTime createdAt;
  @override
  @JsonKey(name: ProfileModel.updatedAtKey)
  final DateTime updatedAt;

  @override
  String toString() {
    return 'ProfileModel(id: $id, username: $username, fullName: $fullName, avatarUrl: $avatarUrl, bio: $bio, location: $location, address: $address, phoneNumber: $phoneNumber, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, fullName,
      avatarUrl, bio, location, address, phoneNumber, createdAt, updatedAt);

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      __$$ProfileModelImplCopyWithImpl<_$ProfileModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileModelImplToJson(
      this,
    );
  }
}

abstract class _ProfileModel extends ProfileModel {
  const factory _ProfileModel(
      {@JsonKey(name: ProfileModel.idKey) required final ProfileId id,
      @JsonKey(name: ProfileModel.usernameKey) required final String username,
      @JsonKey(name: ProfileModel.fullNameKey) required final String? fullName,
      @JsonKey(name: ProfileModel.avatarUrlKey)
      required final String? avatarUrl,
      @JsonKey(name: ProfileModel.bioKey) required final String? bio,
      @JsonKey(name: ProfileModel.locationKey) required final String? location,
      @JsonKey(name: ProfileModel.addressKey) required final String? address,
      @JsonKey(name: ProfileModel.phoneNumberKey)
      required final String? phoneNumber,
      @JsonKey(name: ProfileModel.createdAtKey)
      required final DateTime createdAt,
      @JsonKey(name: ProfileModel.updatedAtKey)
      required final DateTime updatedAt}) = _$ProfileModelImpl;
  const _ProfileModel._() : super._();

  factory _ProfileModel.fromJson(Map<String, dynamic> json) =
      _$ProfileModelImpl.fromJson;

  @override
  @JsonKey(name: ProfileModel.idKey)
  ProfileId get id;
  @override
  @JsonKey(name: ProfileModel.usernameKey)
  String get username;
  @override
  @JsonKey(name: ProfileModel.fullNameKey)
  String? get fullName;
  @override
  @JsonKey(name: ProfileModel.avatarUrlKey)
  String? get avatarUrl;
  @override
  @JsonKey(name: ProfileModel.bioKey)
  String? get bio;
  @override
  @JsonKey(name: ProfileModel.locationKey)
  String? get location;
  @override
  @JsonKey(name: ProfileModel.addressKey)
  String? get address;
  @override
  @JsonKey(name: ProfileModel.phoneNumberKey)
  String? get phoneNumber;
  @override
  @JsonKey(name: ProfileModel.createdAtKey)
  DateTime get createdAt;
  @override
  @JsonKey(name: ProfileModel.updatedAtKey)
  DateTime get updatedAt;

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileLiteModel _$ProfileLiteModelFromJson(Map<String, dynamic> json) {
  return _ProfileLiteModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileLiteModel {
  @JsonKey(name: ProfileLiteModel.idKey)
  ProfileId get id => throw _privateConstructorUsedError;
  @JsonKey(name: ProfileLiteModel.usernameKey)
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: ProfileLiteModel.fullNameKey)
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: ProfileLiteModel.avatarUrlKey)
  String? get avatarUrl => throw _privateConstructorUsedError;

  /// Serializes this ProfileLiteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileLiteModelCopyWith<ProfileLiteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileLiteModelCopyWith<$Res> {
  factory $ProfileLiteModelCopyWith(
          ProfileLiteModel value, $Res Function(ProfileLiteModel) then) =
      _$ProfileLiteModelCopyWithImpl<$Res, ProfileLiteModel>;
  @useResult
  $Res call(
      {@JsonKey(name: ProfileLiteModel.idKey) ProfileId id,
      @JsonKey(name: ProfileLiteModel.usernameKey) String username,
      @JsonKey(name: ProfileLiteModel.fullNameKey) String? fullName,
      @JsonKey(name: ProfileLiteModel.avatarUrlKey) String? avatarUrl});
}

/// @nodoc
class _$ProfileLiteModelCopyWithImpl<$Res, $Val extends ProfileLiteModel>
    implements $ProfileLiteModelCopyWith<$Res> {
  _$ProfileLiteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? fullName = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileLiteModelImplCopyWith<$Res>
    implements $ProfileLiteModelCopyWith<$Res> {
  factory _$$ProfileLiteModelImplCopyWith(_$ProfileLiteModelImpl value,
          $Res Function(_$ProfileLiteModelImpl) then) =
      __$$ProfileLiteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: ProfileLiteModel.idKey) ProfileId id,
      @JsonKey(name: ProfileLiteModel.usernameKey) String username,
      @JsonKey(name: ProfileLiteModel.fullNameKey) String? fullName,
      @JsonKey(name: ProfileLiteModel.avatarUrlKey) String? avatarUrl});
}

/// @nodoc
class __$$ProfileLiteModelImplCopyWithImpl<$Res>
    extends _$ProfileLiteModelCopyWithImpl<$Res, _$ProfileLiteModelImpl>
    implements _$$ProfileLiteModelImplCopyWith<$Res> {
  __$$ProfileLiteModelImplCopyWithImpl(_$ProfileLiteModelImpl _value,
      $Res Function(_$ProfileLiteModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? fullName = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_$ProfileLiteModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@TableModel(ProfileLiteModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$ProfileLiteModelImpl extends _ProfileLiteModel {
  const _$ProfileLiteModelImpl(
      {@JsonKey(name: ProfileLiteModel.idKey) required this.id,
      @JsonKey(name: ProfileLiteModel.usernameKey) required this.username,
      @JsonKey(name: ProfileLiteModel.fullNameKey) required this.fullName,
      @JsonKey(name: ProfileLiteModel.avatarUrlKey) required this.avatarUrl})
      : super._();

  factory _$ProfileLiteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileLiteModelImplFromJson(json);

  @override
  @JsonKey(name: ProfileLiteModel.idKey)
  final ProfileId id;
  @override
  @JsonKey(name: ProfileLiteModel.usernameKey)
  final String username;
  @override
  @JsonKey(name: ProfileLiteModel.fullNameKey)
  final String? fullName;
  @override
  @JsonKey(name: ProfileLiteModel.avatarUrlKey)
  final String? avatarUrl;

  @override
  String toString() {
    return 'ProfileLiteModel(id: $id, username: $username, fullName: $fullName, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileLiteModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, username, fullName, avatarUrl);

  /// Create a copy of ProfileLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileLiteModelImplCopyWith<_$ProfileLiteModelImpl> get copyWith =>
      __$$ProfileLiteModelImplCopyWithImpl<_$ProfileLiteModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileLiteModelImplToJson(
      this,
    );
  }
}

abstract class _ProfileLiteModel extends ProfileLiteModel {
  const factory _ProfileLiteModel(
      {@JsonKey(name: ProfileLiteModel.idKey) required final ProfileId id,
      @JsonKey(name: ProfileLiteModel.usernameKey)
      required final String username,
      @JsonKey(name: ProfileLiteModel.fullNameKey)
      required final String? fullName,
      @JsonKey(name: ProfileLiteModel.avatarUrlKey)
      required final String? avatarUrl}) = _$ProfileLiteModelImpl;
  const _ProfileLiteModel._() : super._();

  factory _ProfileLiteModel.fromJson(Map<String, dynamic> json) =
      _$ProfileLiteModelImpl.fromJson;

  @override
  @JsonKey(name: ProfileLiteModel.idKey)
  ProfileId get id;
  @override
  @JsonKey(name: ProfileLiteModel.usernameKey)
  String get username;
  @override
  @JsonKey(name: ProfileLiteModel.fullNameKey)
  String? get fullName;
  @override
  @JsonKey(name: ProfileLiteModel.avatarUrlKey)
  String? get avatarUrl;

  /// Create a copy of ProfileLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileLiteModelImplCopyWith<_$ProfileLiteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileDetailModel _$ProfileDetailModelFromJson(Map<String, dynamic> json) {
  return _ProfileDetailModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileDetailModel {
  @JsonKey(name: ProfileDetailModel.idKey)
  ProfileId get id => throw _privateConstructorUsedError;
  @JsonKey(name: ProfileDetailModel.usernameKey)
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: ProfileDetailModel.fullNameKey)
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: ProfileDetailModel.avatarUrlKey)
  String? get avatarUrl => throw _privateConstructorUsedError;
  @JsonKey(name: ProfileDetailModel.bioKey)
  String? get bio => throw _privateConstructorUsedError;
  @JsonKey(name: ProfileDetailModel.locationKey)
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: ProfileDetailModel.addressKey)
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: ProfileDetailModel.phoneNumberKey)
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: ProfileDetailModel.createdAtKey)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: ProfileDetailModel.updatedAtKey)
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ProfileDetailModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileDetailModelCopyWith<ProfileDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDetailModelCopyWith<$Res> {
  factory $ProfileDetailModelCopyWith(
          ProfileDetailModel value, $Res Function(ProfileDetailModel) then) =
      _$ProfileDetailModelCopyWithImpl<$Res, ProfileDetailModel>;
  @useResult
  $Res call(
      {@JsonKey(name: ProfileDetailModel.idKey) ProfileId id,
      @JsonKey(name: ProfileDetailModel.usernameKey) String username,
      @JsonKey(name: ProfileDetailModel.fullNameKey) String? fullName,
      @JsonKey(name: ProfileDetailModel.avatarUrlKey) String? avatarUrl,
      @JsonKey(name: ProfileDetailModel.bioKey) String? bio,
      @JsonKey(name: ProfileDetailModel.locationKey) String? location,
      @JsonKey(name: ProfileDetailModel.addressKey) String? address,
      @JsonKey(name: ProfileDetailModel.phoneNumberKey) String? phoneNumber,
      @JsonKey(name: ProfileDetailModel.createdAtKey) DateTime createdAt,
      @JsonKey(name: ProfileDetailModel.updatedAtKey) DateTime updatedAt});
}

/// @nodoc
class _$ProfileDetailModelCopyWithImpl<$Res, $Val extends ProfileDetailModel>
    implements $ProfileDetailModelCopyWith<$Res> {
  _$ProfileDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? fullName = freezed,
    Object? avatarUrl = freezed,
    Object? bio = freezed,
    Object? location = freezed,
    Object? address = freezed,
    Object? phoneNumber = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileDetailModelImplCopyWith<$Res>
    implements $ProfileDetailModelCopyWith<$Res> {
  factory _$$ProfileDetailModelImplCopyWith(_$ProfileDetailModelImpl value,
          $Res Function(_$ProfileDetailModelImpl) then) =
      __$$ProfileDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: ProfileDetailModel.idKey) ProfileId id,
      @JsonKey(name: ProfileDetailModel.usernameKey) String username,
      @JsonKey(name: ProfileDetailModel.fullNameKey) String? fullName,
      @JsonKey(name: ProfileDetailModel.avatarUrlKey) String? avatarUrl,
      @JsonKey(name: ProfileDetailModel.bioKey) String? bio,
      @JsonKey(name: ProfileDetailModel.locationKey) String? location,
      @JsonKey(name: ProfileDetailModel.addressKey) String? address,
      @JsonKey(name: ProfileDetailModel.phoneNumberKey) String? phoneNumber,
      @JsonKey(name: ProfileDetailModel.createdAtKey) DateTime createdAt,
      @JsonKey(name: ProfileDetailModel.updatedAtKey) DateTime updatedAt});
}

/// @nodoc
class __$$ProfileDetailModelImplCopyWithImpl<$Res>
    extends _$ProfileDetailModelCopyWithImpl<$Res, _$ProfileDetailModelImpl>
    implements _$$ProfileDetailModelImplCopyWith<$Res> {
  __$$ProfileDetailModelImplCopyWithImpl(_$ProfileDetailModelImpl _value,
      $Res Function(_$ProfileDetailModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? fullName = freezed,
    Object? avatarUrl = freezed,
    Object? bio = freezed,
    Object? location = freezed,
    Object? address = freezed,
    Object? phoneNumber = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ProfileDetailModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@TableModel(ProfileDetailModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$ProfileDetailModelImpl extends _ProfileDetailModel {
  const _$ProfileDetailModelImpl(
      {@JsonKey(name: ProfileDetailModel.idKey) required this.id,
      @JsonKey(name: ProfileDetailModel.usernameKey) required this.username,
      @JsonKey(name: ProfileDetailModel.fullNameKey) required this.fullName,
      @JsonKey(name: ProfileDetailModel.avatarUrlKey) required this.avatarUrl,
      @JsonKey(name: ProfileDetailModel.bioKey) required this.bio,
      @JsonKey(name: ProfileDetailModel.locationKey) required this.location,
      @JsonKey(name: ProfileDetailModel.addressKey) required this.address,
      @JsonKey(name: ProfileDetailModel.phoneNumberKey)
      required this.phoneNumber,
      @JsonKey(name: ProfileDetailModel.createdAtKey) required this.createdAt,
      @JsonKey(name: ProfileDetailModel.updatedAtKey) required this.updatedAt})
      : super._();

  factory _$ProfileDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileDetailModelImplFromJson(json);

  @override
  @JsonKey(name: ProfileDetailModel.idKey)
  final ProfileId id;
  @override
  @JsonKey(name: ProfileDetailModel.usernameKey)
  final String username;
  @override
  @JsonKey(name: ProfileDetailModel.fullNameKey)
  final String? fullName;
  @override
  @JsonKey(name: ProfileDetailModel.avatarUrlKey)
  final String? avatarUrl;
  @override
  @JsonKey(name: ProfileDetailModel.bioKey)
  final String? bio;
  @override
  @JsonKey(name: ProfileDetailModel.locationKey)
  final String? location;
  @override
  @JsonKey(name: ProfileDetailModel.addressKey)
  final String? address;
  @override
  @JsonKey(name: ProfileDetailModel.phoneNumberKey)
  final String? phoneNumber;
  @override
  @JsonKey(name: ProfileDetailModel.createdAtKey)
  final DateTime createdAt;
  @override
  @JsonKey(name: ProfileDetailModel.updatedAtKey)
  final DateTime updatedAt;

  @override
  String toString() {
    return 'ProfileDetailModel(id: $id, username: $username, fullName: $fullName, avatarUrl: $avatarUrl, bio: $bio, location: $location, address: $address, phoneNumber: $phoneNumber, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileDetailModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, fullName,
      avatarUrl, bio, location, address, phoneNumber, createdAt, updatedAt);

  /// Create a copy of ProfileDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileDetailModelImplCopyWith<_$ProfileDetailModelImpl> get copyWith =>
      __$$ProfileDetailModelImplCopyWithImpl<_$ProfileDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileDetailModelImplToJson(
      this,
    );
  }
}

abstract class _ProfileDetailModel extends ProfileDetailModel {
  const factory _ProfileDetailModel(
      {@JsonKey(name: ProfileDetailModel.idKey) required final ProfileId id,
      @JsonKey(name: ProfileDetailModel.usernameKey)
      required final String username,
      @JsonKey(name: ProfileDetailModel.fullNameKey)
      required final String? fullName,
      @JsonKey(name: ProfileDetailModel.avatarUrlKey)
      required final String? avatarUrl,
      @JsonKey(name: ProfileDetailModel.bioKey) required final String? bio,
      @JsonKey(name: ProfileDetailModel.locationKey)
      required final String? location,
      @JsonKey(name: ProfileDetailModel.addressKey)
      required final String? address,
      @JsonKey(name: ProfileDetailModel.phoneNumberKey)
      required final String? phoneNumber,
      @JsonKey(name: ProfileDetailModel.createdAtKey)
      required final DateTime createdAt,
      @JsonKey(name: ProfileDetailModel.updatedAtKey)
      required final DateTime updatedAt}) = _$ProfileDetailModelImpl;
  const _ProfileDetailModel._() : super._();

  factory _ProfileDetailModel.fromJson(Map<String, dynamic> json) =
      _$ProfileDetailModelImpl.fromJson;

  @override
  @JsonKey(name: ProfileDetailModel.idKey)
  ProfileId get id;
  @override
  @JsonKey(name: ProfileDetailModel.usernameKey)
  String get username;
  @override
  @JsonKey(name: ProfileDetailModel.fullNameKey)
  String? get fullName;
  @override
  @JsonKey(name: ProfileDetailModel.avatarUrlKey)
  String? get avatarUrl;
  @override
  @JsonKey(name: ProfileDetailModel.bioKey)
  String? get bio;
  @override
  @JsonKey(name: ProfileDetailModel.locationKey)
  String? get location;
  @override
  @JsonKey(name: ProfileDetailModel.addressKey)
  String? get address;
  @override
  @JsonKey(name: ProfileDetailModel.phoneNumberKey)
  String? get phoneNumber;
  @override
  @JsonKey(name: ProfileDetailModel.createdAtKey)
  DateTime get createdAt;
  @override
  @JsonKey(name: ProfileDetailModel.updatedAtKey)
  DateTime get updatedAt;

  /// Create a copy of ProfileDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileDetailModelImplCopyWith<_$ProfileDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileCreateParam _$ProfileCreateParamFromJson(Map<String, dynamic> json) {
  return _ProfileCreateParam.fromJson(json);
}

/// @nodoc
mixin _$ProfileCreateParam {
  @JsonKey(name: ProfileCreateParam.idKey)
  ProfileId get id => throw _privateConstructorUsedError;
  @JsonKey(name: ProfileCreateParam.usernameKey)
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: ProfileCreateParam.fullNameKey)
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: ProfileCreateParam.avatarUrlKey)
  String? get avatarUrl => throw _privateConstructorUsedError;
  @JsonKey(name: ProfileCreateParam.bioKey)
  String? get bio => throw _privateConstructorUsedError;
  @JsonKey(name: ProfileCreateParam.locationKey)
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: ProfileCreateParam.addressKey)
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: ProfileCreateParam.phoneNumberKey)
  String? get phoneNumber => throw _privateConstructorUsedError;

  /// Serializes this ProfileCreateParam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileCreateParamCopyWith<ProfileCreateParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCreateParamCopyWith<$Res> {
  factory $ProfileCreateParamCopyWith(
          ProfileCreateParam value, $Res Function(ProfileCreateParam) then) =
      _$ProfileCreateParamCopyWithImpl<$Res, ProfileCreateParam>;
  @useResult
  $Res call(
      {@JsonKey(name: ProfileCreateParam.idKey) ProfileId id,
      @JsonKey(name: ProfileCreateParam.usernameKey) String username,
      @JsonKey(name: ProfileCreateParam.fullNameKey) String? fullName,
      @JsonKey(name: ProfileCreateParam.avatarUrlKey) String? avatarUrl,
      @JsonKey(name: ProfileCreateParam.bioKey) String? bio,
      @JsonKey(name: ProfileCreateParam.locationKey) String? location,
      @JsonKey(name: ProfileCreateParam.addressKey) String? address,
      @JsonKey(name: ProfileCreateParam.phoneNumberKey) String? phoneNumber});
}

/// @nodoc
class _$ProfileCreateParamCopyWithImpl<$Res, $Val extends ProfileCreateParam>
    implements $ProfileCreateParamCopyWith<$Res> {
  _$ProfileCreateParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? fullName = freezed,
    Object? avatarUrl = freezed,
    Object? bio = freezed,
    Object? location = freezed,
    Object? address = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileCreateParamImplCopyWith<$Res>
    implements $ProfileCreateParamCopyWith<$Res> {
  factory _$$ProfileCreateParamImplCopyWith(_$ProfileCreateParamImpl value,
          $Res Function(_$ProfileCreateParamImpl) then) =
      __$$ProfileCreateParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: ProfileCreateParam.idKey) ProfileId id,
      @JsonKey(name: ProfileCreateParam.usernameKey) String username,
      @JsonKey(name: ProfileCreateParam.fullNameKey) String? fullName,
      @JsonKey(name: ProfileCreateParam.avatarUrlKey) String? avatarUrl,
      @JsonKey(name: ProfileCreateParam.bioKey) String? bio,
      @JsonKey(name: ProfileCreateParam.locationKey) String? location,
      @JsonKey(name: ProfileCreateParam.addressKey) String? address,
      @JsonKey(name: ProfileCreateParam.phoneNumberKey) String? phoneNumber});
}

/// @nodoc
class __$$ProfileCreateParamImplCopyWithImpl<$Res>
    extends _$ProfileCreateParamCopyWithImpl<$Res, _$ProfileCreateParamImpl>
    implements _$$ProfileCreateParamImplCopyWith<$Res> {
  __$$ProfileCreateParamImplCopyWithImpl(_$ProfileCreateParamImpl _value,
      $Res Function(_$ProfileCreateParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? fullName = freezed,
    Object? avatarUrl = freezed,
    Object? bio = freezed,
    Object? location = freezed,
    Object? address = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_$ProfileCreateParamImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ProfileCreateParamImpl extends _ProfileCreateParam {
  const _$ProfileCreateParamImpl(
      {@JsonKey(name: ProfileCreateParam.idKey) required this.id,
      @JsonKey(name: ProfileCreateParam.usernameKey) required this.username,
      @JsonKey(name: ProfileCreateParam.fullNameKey) required this.fullName,
      @JsonKey(name: ProfileCreateParam.avatarUrlKey) required this.avatarUrl,
      @JsonKey(name: ProfileCreateParam.bioKey) required this.bio,
      @JsonKey(name: ProfileCreateParam.locationKey) required this.location,
      @JsonKey(name: ProfileCreateParam.addressKey) required this.address,
      @JsonKey(name: ProfileCreateParam.phoneNumberKey)
      required this.phoneNumber})
      : super._();

  factory _$ProfileCreateParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileCreateParamImplFromJson(json);

  @override
  @JsonKey(name: ProfileCreateParam.idKey)
  final ProfileId id;
  @override
  @JsonKey(name: ProfileCreateParam.usernameKey)
  final String username;
  @override
  @JsonKey(name: ProfileCreateParam.fullNameKey)
  final String? fullName;
  @override
  @JsonKey(name: ProfileCreateParam.avatarUrlKey)
  final String? avatarUrl;
  @override
  @JsonKey(name: ProfileCreateParam.bioKey)
  final String? bio;
  @override
  @JsonKey(name: ProfileCreateParam.locationKey)
  final String? location;
  @override
  @JsonKey(name: ProfileCreateParam.addressKey)
  final String? address;
  @override
  @JsonKey(name: ProfileCreateParam.phoneNumberKey)
  final String? phoneNumber;

  @override
  String toString() {
    return 'ProfileCreateParam(id: $id, username: $username, fullName: $fullName, avatarUrl: $avatarUrl, bio: $bio, location: $location, address: $address, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileCreateParamImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, fullName,
      avatarUrl, bio, location, address, phoneNumber);

  /// Create a copy of ProfileCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileCreateParamImplCopyWith<_$ProfileCreateParamImpl> get copyWith =>
      __$$ProfileCreateParamImplCopyWithImpl<_$ProfileCreateParamImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileCreateParamImplToJson(
      this,
    );
  }
}

abstract class _ProfileCreateParam extends ProfileCreateParam {
  const factory _ProfileCreateParam(
      {@JsonKey(name: ProfileCreateParam.idKey) required final ProfileId id,
      @JsonKey(name: ProfileCreateParam.usernameKey)
      required final String username,
      @JsonKey(name: ProfileCreateParam.fullNameKey)
      required final String? fullName,
      @JsonKey(name: ProfileCreateParam.avatarUrlKey)
      required final String? avatarUrl,
      @JsonKey(name: ProfileCreateParam.bioKey) required final String? bio,
      @JsonKey(name: ProfileCreateParam.locationKey)
      required final String? location,
      @JsonKey(name: ProfileCreateParam.addressKey)
      required final String? address,
      @JsonKey(name: ProfileCreateParam.phoneNumberKey)
      required final String? phoneNumber}) = _$ProfileCreateParamImpl;
  const _ProfileCreateParam._() : super._();

  factory _ProfileCreateParam.fromJson(Map<String, dynamic> json) =
      _$ProfileCreateParamImpl.fromJson;

  @override
  @JsonKey(name: ProfileCreateParam.idKey)
  ProfileId get id;
  @override
  @JsonKey(name: ProfileCreateParam.usernameKey)
  String get username;
  @override
  @JsonKey(name: ProfileCreateParam.fullNameKey)
  String? get fullName;
  @override
  @JsonKey(name: ProfileCreateParam.avatarUrlKey)
  String? get avatarUrl;
  @override
  @JsonKey(name: ProfileCreateParam.bioKey)
  String? get bio;
  @override
  @JsonKey(name: ProfileCreateParam.locationKey)
  String? get location;
  @override
  @JsonKey(name: ProfileCreateParam.addressKey)
  String? get address;
  @override
  @JsonKey(name: ProfileCreateParam.phoneNumberKey)
  String? get phoneNumber;

  /// Create a copy of ProfileCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileCreateParamImplCopyWith<_$ProfileCreateParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileUpdateParam _$ProfileUpdateParamFromJson(Map<String, dynamic> json) {
  return _ProfileUpdateParam.fromJson(json);
}

/// @nodoc
mixin _$ProfileUpdateParam {
  @JsonKey(name: ProfileUpdateParam.usernameKey)
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: ProfileUpdateParam.fullNameKey)
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: ProfileUpdateParam.avatarUrlKey)
  String? get avatarUrl => throw _privateConstructorUsedError;
  @JsonKey(name: ProfileUpdateParam.bioKey)
  String? get bio => throw _privateConstructorUsedError;
  @JsonKey(name: ProfileUpdateParam.locationKey)
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: ProfileUpdateParam.addressKey)
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: ProfileUpdateParam.phoneNumberKey)
  String? get phoneNumber => throw _privateConstructorUsedError;

  /// Serializes this ProfileUpdateParam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileUpdateParamCopyWith<ProfileUpdateParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileUpdateParamCopyWith<$Res> {
  factory $ProfileUpdateParamCopyWith(
          ProfileUpdateParam value, $Res Function(ProfileUpdateParam) then) =
      _$ProfileUpdateParamCopyWithImpl<$Res, ProfileUpdateParam>;
  @useResult
  $Res call(
      {@JsonKey(name: ProfileUpdateParam.usernameKey) String? username,
      @JsonKey(name: ProfileUpdateParam.fullNameKey) String? fullName,
      @JsonKey(name: ProfileUpdateParam.avatarUrlKey) String? avatarUrl,
      @JsonKey(name: ProfileUpdateParam.bioKey) String? bio,
      @JsonKey(name: ProfileUpdateParam.locationKey) String? location,
      @JsonKey(name: ProfileUpdateParam.addressKey) String? address,
      @JsonKey(name: ProfileUpdateParam.phoneNumberKey) String? phoneNumber});
}

/// @nodoc
class _$ProfileUpdateParamCopyWithImpl<$Res, $Val extends ProfileUpdateParam>
    implements $ProfileUpdateParamCopyWith<$Res> {
  _$ProfileUpdateParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? fullName = freezed,
    Object? avatarUrl = freezed,
    Object? bio = freezed,
    Object? location = freezed,
    Object? address = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileUpdateParamImplCopyWith<$Res>
    implements $ProfileUpdateParamCopyWith<$Res> {
  factory _$$ProfileUpdateParamImplCopyWith(_$ProfileUpdateParamImpl value,
          $Res Function(_$ProfileUpdateParamImpl) then) =
      __$$ProfileUpdateParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: ProfileUpdateParam.usernameKey) String? username,
      @JsonKey(name: ProfileUpdateParam.fullNameKey) String? fullName,
      @JsonKey(name: ProfileUpdateParam.avatarUrlKey) String? avatarUrl,
      @JsonKey(name: ProfileUpdateParam.bioKey) String? bio,
      @JsonKey(name: ProfileUpdateParam.locationKey) String? location,
      @JsonKey(name: ProfileUpdateParam.addressKey) String? address,
      @JsonKey(name: ProfileUpdateParam.phoneNumberKey) String? phoneNumber});
}

/// @nodoc
class __$$ProfileUpdateParamImplCopyWithImpl<$Res>
    extends _$ProfileUpdateParamCopyWithImpl<$Res, _$ProfileUpdateParamImpl>
    implements _$$ProfileUpdateParamImplCopyWith<$Res> {
  __$$ProfileUpdateParamImplCopyWithImpl(_$ProfileUpdateParamImpl _value,
      $Res Function(_$ProfileUpdateParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? fullName = freezed,
    Object? avatarUrl = freezed,
    Object? bio = freezed,
    Object? location = freezed,
    Object? address = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_$ProfileUpdateParamImpl(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ProfileUpdateParamImpl extends _ProfileUpdateParam {
  const _$ProfileUpdateParamImpl(
      {@JsonKey(name: ProfileUpdateParam.usernameKey) required this.username,
      @JsonKey(name: ProfileUpdateParam.fullNameKey) required this.fullName,
      @JsonKey(name: ProfileUpdateParam.avatarUrlKey) required this.avatarUrl,
      @JsonKey(name: ProfileUpdateParam.bioKey) required this.bio,
      @JsonKey(name: ProfileUpdateParam.locationKey) required this.location,
      @JsonKey(name: ProfileUpdateParam.addressKey) required this.address,
      @JsonKey(name: ProfileUpdateParam.phoneNumberKey)
      required this.phoneNumber})
      : super._();

  factory _$ProfileUpdateParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileUpdateParamImplFromJson(json);

  @override
  @JsonKey(name: ProfileUpdateParam.usernameKey)
  final String? username;
  @override
  @JsonKey(name: ProfileUpdateParam.fullNameKey)
  final String? fullName;
  @override
  @JsonKey(name: ProfileUpdateParam.avatarUrlKey)
  final String? avatarUrl;
  @override
  @JsonKey(name: ProfileUpdateParam.bioKey)
  final String? bio;
  @override
  @JsonKey(name: ProfileUpdateParam.locationKey)
  final String? location;
  @override
  @JsonKey(name: ProfileUpdateParam.addressKey)
  final String? address;
  @override
  @JsonKey(name: ProfileUpdateParam.phoneNumberKey)
  final String? phoneNumber;

  @override
  String toString() {
    return 'ProfileUpdateParam(username: $username, fullName: $fullName, avatarUrl: $avatarUrl, bio: $bio, location: $location, address: $address, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileUpdateParamImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, fullName, avatarUrl,
      bio, location, address, phoneNumber);

  /// Create a copy of ProfileUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileUpdateParamImplCopyWith<_$ProfileUpdateParamImpl> get copyWith =>
      __$$ProfileUpdateParamImplCopyWithImpl<_$ProfileUpdateParamImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileUpdateParamImplToJson(
      this,
    );
  }
}

abstract class _ProfileUpdateParam extends ProfileUpdateParam {
  const factory _ProfileUpdateParam(
      {@JsonKey(name: ProfileUpdateParam.usernameKey)
      required final String? username,
      @JsonKey(name: ProfileUpdateParam.fullNameKey)
      required final String? fullName,
      @JsonKey(name: ProfileUpdateParam.avatarUrlKey)
      required final String? avatarUrl,
      @JsonKey(name: ProfileUpdateParam.bioKey) required final String? bio,
      @JsonKey(name: ProfileUpdateParam.locationKey)
      required final String? location,
      @JsonKey(name: ProfileUpdateParam.addressKey)
      required final String? address,
      @JsonKey(name: ProfileUpdateParam.phoneNumberKey)
      required final String? phoneNumber}) = _$ProfileUpdateParamImpl;
  const _ProfileUpdateParam._() : super._();

  factory _ProfileUpdateParam.fromJson(Map<String, dynamic> json) =
      _$ProfileUpdateParamImpl.fromJson;

  @override
  @JsonKey(name: ProfileUpdateParam.usernameKey)
  String? get username;
  @override
  @JsonKey(name: ProfileUpdateParam.fullNameKey)
  String? get fullName;
  @override
  @JsonKey(name: ProfileUpdateParam.avatarUrlKey)
  String? get avatarUrl;
  @override
  @JsonKey(name: ProfileUpdateParam.bioKey)
  String? get bio;
  @override
  @JsonKey(name: ProfileUpdateParam.locationKey)
  String? get location;
  @override
  @JsonKey(name: ProfileUpdateParam.addressKey)
  String? get address;
  @override
  @JsonKey(name: ProfileUpdateParam.phoneNumberKey)
  String? get phoneNumber;

  /// Create a copy of ProfileUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileUpdateParamImplCopyWith<_$ProfileUpdateParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
