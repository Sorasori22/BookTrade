// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'user_rating_schema.schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserRatingModelImpl _$$UserRatingModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserRatingModelImpl(
      id: UserRatingId.fromJson(json['id']),
      raterId: ProfileId.fromJson(json['rater_id']),
      ratedUserId: ProfileId.fromJson(json['rated_user_id']),
      tradeRequestId: (json['trade_request_id'] as num?)?.toInt(),
      rating: (json['rating'] as num).toInt(),
      comment: json['comment'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      rater: ProfileLiteModel.fromJson(json['rater'] as Map<String, dynamic>),
      ratedUser:
          ProfileLiteModel.fromJson(json['ratedUser'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserRatingModelImplToJson(
        _$UserRatingModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'rater_id': instance.raterId.toJson(),
      'rated_user_id': instance.ratedUserId.toJson(),
      'trade_request_id': instance.tradeRequestId,
      'rating': instance.rating,
      'comment': instance.comment,
      'created_at': instance.createdAt.toIso8601String(),
      'rater': instance.rater.toJson(),
      'ratedUser': instance.ratedUser.toJson(),
    };

_$UserRatingLiteModelImpl _$$UserRatingLiteModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserRatingLiteModelImpl(
      id: UserRatingId.fromJson(json['id']),
      raterId: ProfileId.fromJson(json['rater_id']),
      ratedUserId: ProfileId.fromJson(json['rated_user_id']),
      rating: (json['rating'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$UserRatingLiteModelImplToJson(
        _$UserRatingLiteModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'rater_id': instance.raterId.toJson(),
      'rated_user_id': instance.ratedUserId.toJson(),
      'rating': instance.rating,
      'created_at': instance.createdAt.toIso8601String(),
    };

_$UserRatingDetailModelImpl _$$UserRatingDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserRatingDetailModelImpl(
      id: UserRatingId.fromJson(json['id']),
      raterId: ProfileId.fromJson(json['rater_id']),
      ratedUserId: ProfileId.fromJson(json['rated_user_id']),
      tradeRequestId: (json['trade_request_id'] as num?)?.toInt(),
      rating: (json['rating'] as num).toInt(),
      comment: json['comment'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      rater: ProfileLiteModel.fromJson(json['rater'] as Map<String, dynamic>),
      ratedUser:
          ProfileLiteModel.fromJson(json['ratedUser'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserRatingDetailModelImplToJson(
        _$UserRatingDetailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'rater_id': instance.raterId.toJson(),
      'rated_user_id': instance.ratedUserId.toJson(),
      'trade_request_id': instance.tradeRequestId,
      'rating': instance.rating,
      'comment': instance.comment,
      'created_at': instance.createdAt.toIso8601String(),
      'rater': instance.rater.toJson(),
      'ratedUser': instance.ratedUser.toJson(),
    };

_$UserRatingCreateParamImpl _$$UserRatingCreateParamImplFromJson(
        Map<String, dynamic> json) =>
    _$UserRatingCreateParamImpl(
      raterId: ProfileId.fromJson(json['rater_id']),
      ratedUserId: ProfileId.fromJson(json['rated_user_id']),
      tradeRequestId: (json['trade_request_id'] as num?)?.toInt(),
      rating: (json['rating'] as num).toInt(),
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$$UserRatingCreateParamImplToJson(
        _$UserRatingCreateParamImpl instance) =>
    <String, dynamic>{
      'rater_id': instance.raterId.toJson(),
      'rated_user_id': instance.ratedUserId.toJson(),
      'trade_request_id': instance.tradeRequestId,
      'rating': instance.rating,
      'comment': instance.comment,
    };

_$UserRatingUpdateParamImpl _$$UserRatingUpdateParamImplFromJson(
        Map<String, dynamic> json) =>
    _$UserRatingUpdateParamImpl(
      rating: (json['rating'] as num?)?.toInt(),
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$$UserRatingUpdateParamImplToJson(
        _$UserRatingUpdateParamImpl instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'comment': instance.comment,
    };

// **************************************************************************
// TableModelGenerator
// **************************************************************************

const _tableUserRatingModel = TableBuilder(
  tableName: "user_ratings",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('rater_id'),
    ColumnBuilder('rated_user_id'),
    ColumnBuilder('trade_request_id'),
    ColumnBuilder('rating'),
    ColumnBuilder('comment'),
    ColumnBuilder('created_at'),
    ColumnBuilder.join(ProfileLiteModel.table,
        key: "rater", candidateKey: 'id', foreignKey: 'rater_id'),
    ColumnBuilder.join(ProfileLiteModel.table,
        key: "ratedUser", candidateKey: 'id', foreignKey: 'rated_user_id'),
  ],
);

const _tableUserRatingLiteModel = TableBuilder(
  tableName: "user_ratings",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('rater_id'),
    ColumnBuilder('rated_user_id'),
    ColumnBuilder('rating'),
    ColumnBuilder('created_at'),
  ],
);

const _tableUserRatingDetailModel = TableBuilder(
  tableName: "user_ratings",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('rater_id'),
    ColumnBuilder('rated_user_id'),
    ColumnBuilder('trade_request_id'),
    ColumnBuilder('rating'),
    ColumnBuilder('comment'),
    ColumnBuilder('created_at'),
    ColumnBuilder.join(ProfileLiteModel.table,
        key: "rater", candidateKey: 'id', foreignKey: 'rater_id'),
    ColumnBuilder.join(ProfileLiteModel.table,
        key: "ratedUser", candidateKey: 'id', foreignKey: 'rated_user_id'),
  ],
);
