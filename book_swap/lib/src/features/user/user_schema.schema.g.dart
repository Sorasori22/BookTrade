// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'user_schema.schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: UserId.fromJson(json['id']),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
    };

_$UserLiteModelImpl _$$UserLiteModelImplFromJson(Map<String, dynamic> json) =>
    _$UserLiteModelImpl(
      id: UserId.fromJson(json['id']),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$UserLiteModelImplToJson(_$UserLiteModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
    };

_$UserDetailModelImpl _$$UserDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserDetailModelImpl(
      id: UserId.fromJson(json['id']),
      name: json['name'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$UserDetailModelImplToJson(
        _$UserDetailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
      'created_at': instance.createdAt.toIso8601String(),
    };

_$UserCreateParamImpl _$$UserCreateParamImplFromJson(
        Map<String, dynamic> json) =>
    _$UserCreateParamImpl();

Map<String, dynamic> _$$UserCreateParamImplToJson(
        _$UserCreateParamImpl instance) =>
    <String, dynamic>{};

_$UserUpdateParamImpl _$$UserUpdateParamImplFromJson(
        Map<String, dynamic> json) =>
    _$UserUpdateParamImpl();

Map<String, dynamic> _$$UserUpdateParamImplToJson(
        _$UserUpdateParamImpl instance) =>
    <String, dynamic>{};

// **************************************************************************
// TableModelGenerator
// **************************************************************************

const _tableUserModel = TableBuilder(
  tableName: "users",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('name'),
  ],
);

const _tableUserLiteModel = TableBuilder(
  tableName: "users",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('name'),
  ],
);

const _tableUserDetailModel = TableBuilder(
  tableName: "users",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('name'),
    ColumnBuilder('created_at'),
  ],
);
