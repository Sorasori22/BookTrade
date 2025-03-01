// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'wishlist_item_schema.schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WishlistItemModelImpl _$$WishlistItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WishlistItemModelImpl(
      id: WishlistItemId.fromJson(json['id']),
      userId: ProfileId.fromJson(json['user_id']),
      title: json['title'] as String,
      author: json['author'] as String?,
      isbn: json['isbn'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      user: ProfileLiteModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WishlistItemModelImplToJson(
        _$WishlistItemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'user_id': instance.userId.toJson(),
      'title': instance.title,
      'author': instance.author,
      'isbn': instance.isbn,
      'created_at': instance.createdAt.toIso8601String(),
      'user': instance.user.toJson(),
    };

_$WishlistItemLiteModelImpl _$$WishlistItemLiteModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WishlistItemLiteModelImpl(
      id: WishlistItemId.fromJson(json['id']),
      userId: ProfileId.fromJson(json['user_id']),
      title: json['title'] as String,
      author: json['author'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$WishlistItemLiteModelImplToJson(
        _$WishlistItemLiteModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'user_id': instance.userId.toJson(),
      'title': instance.title,
      'author': instance.author,
      'created_at': instance.createdAt.toIso8601String(),
    };

_$WishlistItemDetailModelImpl _$$WishlistItemDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WishlistItemDetailModelImpl(
      id: WishlistItemId.fromJson(json['id']),
      userId: ProfileId.fromJson(json['user_id']),
      title: json['title'] as String,
      author: json['author'] as String?,
      isbn: json['isbn'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      user: ProfileLiteModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WishlistItemDetailModelImplToJson(
        _$WishlistItemDetailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'user_id': instance.userId.toJson(),
      'title': instance.title,
      'author': instance.author,
      'isbn': instance.isbn,
      'created_at': instance.createdAt.toIso8601String(),
      'user': instance.user.toJson(),
    };

_$WishlistItemCreateParamImpl _$$WishlistItemCreateParamImplFromJson(
        Map<String, dynamic> json) =>
    _$WishlistItemCreateParamImpl(
      userId: ProfileId.fromJson(json['user_id']),
      title: json['title'] as String,
      author: json['author'] as String?,
      isbn: json['isbn'] as String?,
    );

Map<String, dynamic> _$$WishlistItemCreateParamImplToJson(
        _$WishlistItemCreateParamImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId.toJson(),
      'title': instance.title,
      'author': instance.author,
      'isbn': instance.isbn,
    };

_$WishlistItemUpdateParamImpl _$$WishlistItemUpdateParamImplFromJson(
        Map<String, dynamic> json) =>
    _$WishlistItemUpdateParamImpl(
      title: json['title'] as String?,
      author: json['author'] as String?,
      isbn: json['isbn'] as String?,
    );

Map<String, dynamic> _$$WishlistItemUpdateParamImplToJson(
        _$WishlistItemUpdateParamImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'author': instance.author,
      'isbn': instance.isbn,
    };

// **************************************************************************
// TableModelGenerator
// **************************************************************************

const _tableWishlistItemModel = TableBuilder(
  tableName: "wishlist_items",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('user_id'),
    ColumnBuilder('title'),
    ColumnBuilder('author'),
    ColumnBuilder('isbn'),
    ColumnBuilder('created_at'),
    ColumnBuilder.join(ProfileLiteModel.table,
        key: "user", candidateKey: 'id', foreignKey: 'user_id'),
  ],
);

const _tableWishlistItemLiteModel = TableBuilder(
  tableName: "wishlist_items",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('user_id'),
    ColumnBuilder('title'),
    ColumnBuilder('author'),
    ColumnBuilder('created_at'),
  ],
);

const _tableWishlistItemDetailModel = TableBuilder(
  tableName: "wishlist_items",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('user_id'),
    ColumnBuilder('title'),
    ColumnBuilder('author'),
    ColumnBuilder('isbn'),
    ColumnBuilder('created_at'),
    ColumnBuilder.join(ProfileLiteModel.table,
        key: "user", candidateKey: 'id', foreignKey: 'user_id'),
  ],
);
