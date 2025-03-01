// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'book_genre_schema.schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookGenreModelImpl _$$BookGenreModelImplFromJson(Map<String, dynamic> json) =>
    _$BookGenreModelImpl(
      id: BookGenreId.fromJson(json['id']),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$BookGenreModelImplToJson(
        _$BookGenreModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
    };

_$BookGenreLiteModelImpl _$$BookGenreLiteModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BookGenreLiteModelImpl(
      id: BookGenreId.fromJson(json['id']),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$BookGenreLiteModelImplToJson(
        _$BookGenreLiteModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
    };

_$BookGenreDetailModelImpl _$$BookGenreDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BookGenreDetailModelImpl(
      id: BookGenreId.fromJson(json['id']),
      name: json['name'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$BookGenreDetailModelImplToJson(
        _$BookGenreDetailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
      'created_at': instance.createdAt.toIso8601String(),
    };

_$BookGenreCreateParamImpl _$$BookGenreCreateParamImplFromJson(
        Map<String, dynamic> json) =>
    _$BookGenreCreateParamImpl();

Map<String, dynamic> _$$BookGenreCreateParamImplToJson(
        _$BookGenreCreateParamImpl instance) =>
    <String, dynamic>{};

_$BookGenreUpdateParamImpl _$$BookGenreUpdateParamImplFromJson(
        Map<String, dynamic> json) =>
    _$BookGenreUpdateParamImpl();

Map<String, dynamic> _$$BookGenreUpdateParamImplToJson(
        _$BookGenreUpdateParamImpl instance) =>
    <String, dynamic>{};

// **************************************************************************
// TableModelGenerator
// **************************************************************************

const _tableBookGenreModel = TableBuilder(
  tableName: "book_genres",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('name'),
  ],
);

const _tableBookGenreLiteModel = TableBuilder(
  tableName: "book_genres",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('name'),
  ],
);

const _tableBookGenreDetailModel = TableBuilder(
  tableName: "book_genres",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('name'),
    ColumnBuilder('created_at'),
  ],
);
