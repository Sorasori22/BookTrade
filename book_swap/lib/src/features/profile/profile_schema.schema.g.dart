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
      email: json['email'] as String,
      fullname: json['fullname'] as String?,
      avatar: json['avatar_url'] == null
          ? null
          : ImageObject.fromJson(json['avatar_url']),
      bio: json['bio'] as String?,
      age: (json['age'] as num?)?.toInt(),
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
      'email': instance.email,
      'fullname': instance.fullname,
      'avatar_url': instance.avatar?.toJson(),
      'bio': instance.bio,
      'age': instance.age,
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
      email: json['email'] as String,
      fullname: json['fullname'] as String?,
      avatar: json['avatar_url'] == null
          ? null
          : ImageObject.fromJson(json['avatar_url']),
    );

Map<String, dynamic> _$$ProfileLiteModelImplToJson(
        _$ProfileLiteModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'username': instance.username,
      'email': instance.email,
      'fullname': instance.fullname,
      'avatar_url': instance.avatar?.toJson(),
    };

_$ProfileDetailModelImpl _$$ProfileDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileDetailModelImpl(
      id: ProfileId.fromJson(json['id']),
      username: json['username'] as String,
      email: json['email'] as String,
      fullname: json['fullname'] as String?,
      avatar: json['avatar_url'] == null
          ? null
          : ImageObject.fromJson(json['avatar_url']),
      bio: json['bio'] as String?,
      age: (json['age'] as num?)?.toInt(),
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
      'email': instance.email,
      'fullname': instance.fullname,
      'avatar_url': instance.avatar?.toJson(),
      'bio': instance.bio,
      'age': instance.age,
      'location': instance.location,
      'address': instance.address,
      'phone_number': instance.phoneNumber,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

_$ProfileUpdateParamImpl _$$ProfileUpdateParamImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileUpdateParamImpl(
      username: json['username'] as String?,
      fullname: json['fullname'] as String?,
      bio: json['bio'] as String?,
      age: (json['age'] as num?)?.toInt(),
      location: json['location'] as String?,
      address: json['address'] as String?,
      phoneNumber: json['phone_number'] as String?,
    );

Map<String, dynamic> _$$ProfileUpdateParamImplToJson(
        _$ProfileUpdateParamImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'fullname': instance.fullname,
      'bio': instance.bio,
      'age': instance.age,
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
    ColumnBuilder('email'),
    ColumnBuilder('fullname'),
    ColumnBuilder('avatar_url'),
    ColumnBuilder('bio'),
    ColumnBuilder('age'),
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
    ColumnBuilder('email'),
    ColumnBuilder('fullname'),
    ColumnBuilder('avatar_url'),
  ],
);

const _tableProfileDetailModel = TableBuilder(
  tableName: "profiles",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('username'),
    ColumnBuilder('email'),
    ColumnBuilder('fullname'),
    ColumnBuilder('avatar_url'),
    ColumnBuilder('bio'),
    ColumnBuilder('age'),
    ColumnBuilder('location'),
    ColumnBuilder('address'),
    ColumnBuilder('phone_number'),
    ColumnBuilder('created_at'),
    ColumnBuilder('updated_at'),
  ],
);
