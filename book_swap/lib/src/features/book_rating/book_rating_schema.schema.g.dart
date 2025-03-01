// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'book_rating_schema.schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookRatingModelImpl _$$BookRatingModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BookRatingModelImpl(
      id: BookRatingId.fromJson(json['id']),
      userId: ProfileId.fromJson(json['user_id']),
      bookId: BookId.fromJson(json['book_id']),
      rating: (json['rating'] as num).toInt(),
      comment: json['comment'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      user: ProfileLiteModel.fromJson(json['user'] as Map<String, dynamic>),
      book: BookLiteModel.fromJson(json['book'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BookRatingModelImplToJson(
        _$BookRatingModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'user_id': instance.userId.toJson(),
      'book_id': instance.bookId.toJson(),
      'rating': instance.rating,
      'comment': instance.comment,
      'created_at': instance.createdAt.toIso8601String(),
      'user': instance.user.toJson(),
      'book': instance.book.toJson(),
    };

_$BookRatingLiteModelImpl _$$BookRatingLiteModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BookRatingLiteModelImpl(
      id: BookRatingId.fromJson(json['id']),
      userId: ProfileId.fromJson(json['user_id']),
      bookId: BookId.fromJson(json['book_id']),
      rating: (json['rating'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$BookRatingLiteModelImplToJson(
        _$BookRatingLiteModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'user_id': instance.userId.toJson(),
      'book_id': instance.bookId.toJson(),
      'rating': instance.rating,
      'created_at': instance.createdAt.toIso8601String(),
    };

_$BookRatingDetailModelImpl _$$BookRatingDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BookRatingDetailModelImpl(
      id: BookRatingId.fromJson(json['id']),
      userId: ProfileId.fromJson(json['user_id']),
      bookId: BookId.fromJson(json['book_id']),
      rating: (json['rating'] as num).toInt(),
      comment: json['comment'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      user: ProfileLiteModel.fromJson(json['user'] as Map<String, dynamic>),
      book: BookLiteModel.fromJson(json['book'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BookRatingDetailModelImplToJson(
        _$BookRatingDetailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'user_id': instance.userId.toJson(),
      'book_id': instance.bookId.toJson(),
      'rating': instance.rating,
      'comment': instance.comment,
      'created_at': instance.createdAt.toIso8601String(),
      'user': instance.user.toJson(),
      'book': instance.book.toJson(),
    };

_$BookRatingCreateParamImpl _$$BookRatingCreateParamImplFromJson(
        Map<String, dynamic> json) =>
    _$BookRatingCreateParamImpl(
      userId: ProfileId.fromJson(json['user_id']),
      bookId: BookId.fromJson(json['book_id']),
      rating: (json['rating'] as num).toInt(),
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$$BookRatingCreateParamImplToJson(
        _$BookRatingCreateParamImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId.toJson(),
      'book_id': instance.bookId.toJson(),
      'rating': instance.rating,
      'comment': instance.comment,
    };

_$BookRatingUpdateParamImpl _$$BookRatingUpdateParamImplFromJson(
        Map<String, dynamic> json) =>
    _$BookRatingUpdateParamImpl(
      rating: (json['rating'] as num?)?.toInt(),
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$$BookRatingUpdateParamImplToJson(
        _$BookRatingUpdateParamImpl instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'comment': instance.comment,
    };

// **************************************************************************
// TableModelGenerator
// **************************************************************************

const _tableBookRatingModel = TableBuilder(
  tableName: "book_ratings",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('user_id'),
    ColumnBuilder('book_id'),
    ColumnBuilder('rating'),
    ColumnBuilder('comment'),
    ColumnBuilder('created_at'),
    ColumnBuilder.join(ProfileLiteModel.table,
        key: "user", candidateKey: 'id', foreignKey: 'user_id'),
    ColumnBuilder.join(BookLiteModel.table,
        key: "book", candidateKey: 'id', foreignKey: 'book_id'),
  ],
);

const _tableBookRatingLiteModel = TableBuilder(
  tableName: "book_ratings",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('user_id'),
    ColumnBuilder('book_id'),
    ColumnBuilder('rating'),
    ColumnBuilder('created_at'),
  ],
);

const _tableBookRatingDetailModel = TableBuilder(
  tableName: "book_ratings",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('user_id'),
    ColumnBuilder('book_id'),
    ColumnBuilder('rating'),
    ColumnBuilder('comment'),
    ColumnBuilder('created_at'),
    ColumnBuilder.join(ProfileLiteModel.table,
        key: "user", candidateKey: 'id', foreignKey: 'user_id'),
    ColumnBuilder.join(BookLiteModel.table,
        key: "book", candidateKey: 'id', foreignKey: 'book_id'),
  ],
);
