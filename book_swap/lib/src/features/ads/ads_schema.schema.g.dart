// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'ads_schema.schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdsModelImpl _$$AdsModelImplFromJson(Map<String, dynamic> json) =>
    _$AdsModelImpl(
      id: AdsId.fromJson(json['id']),
      title: json['title'] as String,
      description: json['description'] as String,
      url: json['url'] as String,
      imagePath: ImageObject.fromJson(json['image_path']),
      buttonText: json['button_text'] as String,
      active: json['active'] as bool,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$AdsModelImplToJson(_$AdsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
      'image_path': instance.imagePath.toJson(),
      'button_text': instance.buttonText,
      'active': instance.active,
      'created_at': instance.createdAt.toIso8601String(),
    };

// **************************************************************************
// TableModelGenerator
// **************************************************************************

const _tableAdsModel = TableBuilder(
  tableName: "ads",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('title'),
    ColumnBuilder('description'),
    ColumnBuilder('url'),
    ColumnBuilder('image_path'),
    ColumnBuilder('button_text'),
    ColumnBuilder('active'),
    ColumnBuilder('created_at'),
  ],
);
