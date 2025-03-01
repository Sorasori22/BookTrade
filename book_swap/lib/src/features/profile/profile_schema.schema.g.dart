// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'profile_schema.schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileModelImpl _$$ProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$ProfileModelImpl(
      id: ProfileId.fromJson(json['id']),
      username: json['username'] as String,
      fullName: json['full_name'] as String?,
      avatarUrl: json['avatar_url'] as String?,
      bio: json['bio'] as String?,
      location: json['location'] as String?,
      address: json['address'] as String?,
      phoneNumber: json['phone_number'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$ProfileModelImplToJson(_$ProfileModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'username': instance.username,
      'full_name': instance.fullName,
      'avatar_url': instance.avatarUrl,
      'bio': instance.bio,
      'location': instance.location,
      'address': instance.address,
      'phone_number': instance.phoneNumber,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

_$ProfileLiteModelImpl _$$ProfileLiteModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileLiteModelImpl(
      id: ProfileId.fromJson(json['id']),
      username: json['username'] as String,
      fullName: json['full_name'] as String?,
      avatarUrl: json['avatar_url'] as String?,
    );

Map<String, dynamic> _$$ProfileLiteModelImplToJson(
        _$ProfileLiteModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'username': instance.username,
      'full_name': instance.fullName,
      'avatar_url': instance.avatarUrl,
    };

_$ProfileDetailModelImpl _$$ProfileDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileDetailModelImpl(
      id: ProfileId.fromJson(json['id']),
      username: json['username'] as String,
      fullName: json['full_name'] as String?,
      avatarUrl: json['avatar_url'] as String?,
      bio: json['bio'] as String?,
      location: json['location'] as String?,
      address: json['address'] as String?,
      phoneNumber: json['phone_number'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$ProfileDetailModelImplToJson(
        _$ProfileDetailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'username': instance.username,
      'full_name': instance.fullName,
      'avatar_url': instance.avatarUrl,
      'bio': instance.bio,
      'location': instance.location,
      'address': instance.address,
      'phone_number': instance.phoneNumber,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

_$ProfileCreateParamImpl _$$ProfileCreateParamImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileCreateParamImpl(
      id: ProfileId.fromJson(json['id']),
      username: json['username'] as String,
      fullName: json['full_name'] as String?,
      avatarUrl: json['avatar_url'] as String?,
      bio: json['bio'] as String?,
      location: json['location'] as String?,
      address: json['address'] as String?,
      phoneNumber: json['phone_number'] as String?,
    );

Map<String, dynamic> _$$ProfileCreateParamImplToJson(
        _$ProfileCreateParamImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'username': instance.username,
      'full_name': instance.fullName,
      'avatar_url': instance.avatarUrl,
      'bio': instance.bio,
      'location': instance.location,
      'address': instance.address,
      'phone_number': instance.phoneNumber,
    };

_$ProfileUpdateParamImpl _$$ProfileUpdateParamImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileUpdateParamImpl(
      username: json['username'] as String?,
      fullName: json['full_name'] as String?,
      avatarUrl: json['avatar_url'] as String?,
      bio: json['bio'] as String?,
      location: json['location'] as String?,
      address: json['address'] as String?,
      phoneNumber: json['phone_number'] as String?,
    );

Map<String, dynamic> _$$ProfileUpdateParamImplToJson(
        _$ProfileUpdateParamImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'full_name': instance.fullName,
      'avatar_url': instance.avatarUrl,
      'bio': instance.bio,
      'location': instance.location,
      'address': instance.address,
      'phone_number': instance.phoneNumber,
    };

// **************************************************************************
// TableModelGenerator
// **************************************************************************

const _tableProfileModel = TableBuilder(
  tableName: "profiles",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('username'),
    ColumnBuilder('full_name'),
    ColumnBuilder('avatar_url'),
    ColumnBuilder('bio'),
    ColumnBuilder('location'),
    ColumnBuilder('address'),
    ColumnBuilder('phone_number'),
    ColumnBuilder('created_at'),
    ColumnBuilder('updated_at'),
  ],
);

const _tableProfileLiteModel = TableBuilder(
  tableName: "profiles",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('username'),
    ColumnBuilder('full_name'),
    ColumnBuilder('avatar_url'),
  ],
);

const _tableProfileDetailModel = TableBuilder(
  tableName: "profiles",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('username'),
    ColumnBuilder('full_name'),
    ColumnBuilder('avatar_url'),
    ColumnBuilder('bio'),
    ColumnBuilder('location'),
    ColumnBuilder('address'),
    ColumnBuilder('phone_number'),
    ColumnBuilder('created_at'),
    ColumnBuilder('updated_at'),
  ],
);
