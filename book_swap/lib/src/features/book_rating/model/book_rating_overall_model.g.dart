// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'book_rating_overall_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookRatingOverallModelImpl _$$BookRatingOverallModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BookRatingOverallModelImpl(
      average: (json['average'] as num).toDouble(),
      rating1Count: (json['rating_1_count'] as num).toInt(),
      rating2Count: (json['rating_2_count'] as num).toInt(),
      rating3Count: (json['rating_3_count'] as num).toInt(),
      rating4Count: (json['rating_4_count'] as num).toInt(),
      rating5Count: (json['rating_5_count'] as num).toInt(),
      mine: json['mine'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$BookRatingOverallModelImplToJson(
        _$BookRatingOverallModelImpl instance) =>
    <String, dynamic>{
      'average': instance.average,
      'rating_1_count': instance.rating1Count,
      'rating_2_count': instance.rating2Count,
      'rating_3_count': instance.rating3Count,
      'rating_4_count': instance.rating4Count,
      'rating_5_count': instance.rating5Count,
      'mine': instance.mine,
    };
