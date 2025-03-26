// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'banner_schema.schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BannerModelImpl _$$BannerModelImplFromJson(Map<String, dynamic> json) =>
    _$BannerModelImpl(
      id: BannerId.fromJson(json['id']),
      note: json['note'] as String?,
      imagePath: ImageObject.fromJson(json['image_path']),
      isActive: json['is_active'] as bool,
      skippableDurationSeconds:
          (json['skippable_duration_seconds'] as num).toInt(),
    );

Map<String, dynamic> _$$BannerModelImplToJson(_$BannerModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'note': instance.note,
      'image_path': instance.imagePath.toJson(),
      'is_active': instance.isActive,
      'skippable_duration_seconds': instance.skippableDurationSeconds,
    };

_$BannerCreateParamImpl _$$BannerCreateParamImplFromJson(
        Map<String, dynamic> json) =>
    _$BannerCreateParamImpl(
      note: json['note'] as String?,
      imagePath: ImageObject.fromJson(json['image_path']),
      isActive: json['is_active'] as bool,
      skippableDurationSeconds:
          (json['skippable_duration_seconds'] as num).toInt(),
    );

Map<String, dynamic> _$$BannerCreateParamImplToJson(
        _$BannerCreateParamImpl instance) =>
    <String, dynamic>{
      'note': instance.note,
      'image_path': instance.imagePath.toJson(),
      'is_active': instance.isActive,
      'skippable_duration_seconds': instance.skippableDurationSeconds,
    };

// **************************************************************************
// TableModelGenerator
// **************************************************************************

const _tableBannerModel = TableBuilder(
  tableName: "banners",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('note'),
    ColumnBuilder('image_path'),
    ColumnBuilder('is_active'),
    ColumnBuilder('skippable_duration_seconds'),
  ],
);
