// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'book_schema.schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookModelImpl _$$BookModelImplFromJson(Map<String, dynamic> json) =>
    _$BookModelImpl(
      id: BookId.fromJson(json['id']),
      ownerId: ProfileId.fromJson(json['owner_id']),
      title: json['title'] as String,
      author: json['author'] as String,
      condition: (json['condition'] as num).toInt(),
      image: json['image_url'] == null
          ? null
          : ImageObject.fromJson(json['image_url']),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$BookModelImplToJson(_$BookModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'owner_id': instance.ownerId.toJson(),
      'title': instance.title,
      'author': instance.author,
      'condition': instance.condition,
      'image_url': instance.image?.toJson(),
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

_$BookLiteModelImpl _$$BookLiteModelImplFromJson(Map<String, dynamic> json) =>
    _$BookLiteModelImpl(
      id: BookId.fromJson(json['id']),
      title: json['title'] as String,
      author: json['author'] as String,
      image: json['image_url'] == null
          ? null
          : ImageObject.fromJson(json['image_url']),
      ownerId: ProfileId.fromJson(json['owner_id']),
    );

Map<String, dynamic> _$$BookLiteModelImplToJson(_$BookLiteModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'title': instance.title,
      'author': instance.author,
      'image_url': instance.image?.toJson(),
      'owner_id': instance.ownerId.toJson(),
    };

_$BookDetailModelImpl _$$BookDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BookDetailModelImpl(
      id: BookId.fromJson(json['id']),
      ownerId: ProfileId.fromJson(json['owner_id']),
      title: json['title'] as String,
      author: json['author'] as String,
      condition: (json['condition'] as num).toInt(),
      image: json['image_url'] == null
          ? null
          : ImageObject.fromJson(json['image_url']),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      owner: json['owner'] == null
          ? null
          : ProfileLiteModel.fromJson(json['owner'] as Map<String, dynamic>),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$BookDetailModelImplToJson(
        _$BookDetailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'owner_id': instance.ownerId.toJson(),
      'title': instance.title,
      'author': instance.author,
      'condition': instance.condition,
      'image_url': instance.image?.toJson(),
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'owner': instance.owner?.toJson(),
      'description': instance.description,
    };

_$BookCreateParamImpl _$$BookCreateParamImplFromJson(
        Map<String, dynamic> json) =>
    _$BookCreateParamImpl(
      ownerId: ProfileId.fromJson(json['owner_id']),
      title: json['title'] as String,
      author: json['author'] as String,
      description: json['description'] as String?,
      image: json['image_url'] == null
          ? null
          : ImageObject.fromJson(json['image_url']),
      condition: (json['condition'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BookCreateParamImplToJson(
        _$BookCreateParamImpl instance) =>
    <String, dynamic>{
      'owner_id': instance.ownerId.toJson(),
      'title': instance.title,
      'author': instance.author,
      'description': instance.description,
      'image_url': instance.image?.toJson(),
      'condition': instance.condition,
    };

_$BookUpdateParamImpl _$$BookUpdateParamImplFromJson(
        Map<String, dynamic> json) =>
    _$BookUpdateParamImpl(
      ownerId: ProfileId.fromJson(json['owner_id']),
      title: json['title'] as String,
      author: json['author'] as String,
      description: json['description'] as String?,
      image: json['image_url'] == null
          ? null
          : ImageObject.fromJson(json['image_url']),
      condition: (json['condition'] as num).toInt(),
    );

Map<String, dynamic> _$$BookUpdateParamImplToJson(
        _$BookUpdateParamImpl instance) =>
    <String, dynamic>{
      'owner_id': instance.ownerId.toJson(),
      'title': instance.title,
      'author': instance.author,
      'description': instance.description,
      'image_url': instance.image?.toJson(),
      'condition': instance.condition,
    };

// **************************************************************************
// TableModelGenerator
// **************************************************************************

const _tableBookModel = TableBuilder(
  tableName: "books",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('owner_id'),
    ColumnBuilder('title'),
    ColumnBuilder('author'),
    ColumnBuilder('condition'),
    ColumnBuilder('image_url'),
    ColumnBuilder('created_at'),
    ColumnBuilder('updated_at'),
  ],
);

const _tableBookLiteModel = TableBuilder(
  tableName: "books",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('title'),
    ColumnBuilder('author'),
    ColumnBuilder('image_url'),
    ColumnBuilder('owner_id'),
  ],
);

const _tableBookDetailModel = TableBuilder(
  tableName: "books",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('owner_id'),
    ColumnBuilder('title'),
    ColumnBuilder('author'),
    ColumnBuilder('condition'),
    ColumnBuilder('image_url'),
    ColumnBuilder('created_at'),
    ColumnBuilder('updated_at'),
    ColumnBuilder.join(ProfileLiteModel.table,
        key: "owner", candidateKey: 'id', foreignKey: 'owner_id'),
    ColumnBuilder('description'),
  ],
);
