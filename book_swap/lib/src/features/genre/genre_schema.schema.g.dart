// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'genre_schema.schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GenreModelImpl _$$GenreModelImplFromJson(Map<String, dynamic> json) =>
    _$GenreModelImpl(
      id: GenreId.fromJson(json['id']),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$GenreModelImplToJson(_$GenreModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
    };

_$GenreLiteModelImpl _$$GenreLiteModelImplFromJson(Map<String, dynamic> json) =>
    _$GenreLiteModelImpl(
      id: GenreId.fromJson(json['id']),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$GenreLiteModelImplToJson(
        _$GenreLiteModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
    };

_$GenreDetailModelImpl _$$GenreDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GenreDetailModelImpl(
      id: GenreId.fromJson(json['id']),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$GenreDetailModelImplToJson(
        _$GenreDetailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
    };

_$GenreCreateParamImpl _$$GenreCreateParamImplFromJson(
        Map<String, dynamic> json) =>
    _$GenreCreateParamImpl(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$GenreCreateParamImplToJson(
        _$GenreCreateParamImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$GenreUpdateParamImpl _$$GenreUpdateParamImplFromJson(
        Map<String, dynamic> json) =>
    _$GenreUpdateParamImpl(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$GenreUpdateParamImplToJson(
        _$GenreUpdateParamImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

// **************************************************************************
// TableModelGenerator
// **************************************************************************

const _tableGenreModel = TableBuilder(
  tableName: "genres",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('name'),
  ],
);

const _tableGenreLiteModel = TableBuilder(
  tableName: "genres",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('name'),
  ],
);

const _tableGenreDetailModel = TableBuilder(
  tableName: "genres",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('name'),
  ],
);
