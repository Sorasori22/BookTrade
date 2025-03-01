// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'trade_request_schema.schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TradeRequestModelImpl _$$TradeRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TradeRequestModelImpl(
      id: TradeRequestId.fromJson(json['id']),
      requesterId: ProfileId.fromJson(json['requester_id']),
      ownerId: ProfileId.fromJson(json['owner_id']),
      bookId: BookId.fromJson(json['book_id']),
      offeredBookId: json['offered_book_id'] == null
          ? null
          : BookId.fromJson(json['offered_book_id']),
      status: json['status'] as String,
      message: json['message'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      requester:
          ProfileLiteModel.fromJson(json['requester'] as Map<String, dynamic>),
      owner: ProfileLiteModel.fromJson(json['owner'] as Map<String, dynamic>),
      book: BookLiteModel.fromJson(json['book'] as Map<String, dynamic>),
      offeredBook: json['offeredBook'] == null
          ? null
          : BookLiteModel.fromJson(json['offeredBook'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TradeRequestModelImplToJson(
        _$TradeRequestModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'requester_id': instance.requesterId.toJson(),
      'owner_id': instance.ownerId.toJson(),
      'book_id': instance.bookId.toJson(),
      'offered_book_id': instance.offeredBookId?.toJson(),
      'status': instance.status,
      'message': instance.message,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'requester': instance.requester.toJson(),
      'owner': instance.owner.toJson(),
      'book': instance.book.toJson(),
      'offeredBook': instance.offeredBook?.toJson(),
    };

_$TradeRequestLiteModelImpl _$$TradeRequestLiteModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TradeRequestLiteModelImpl(
      id: TradeRequestId.fromJson(json['id']),
      requesterId: ProfileId.fromJson(json['requester_id']),
      ownerId: ProfileId.fromJson(json['owner_id']),
      bookId: BookId.fromJson(json['book_id']),
      offeredBookId: json['offered_book_id'] == null
          ? null
          : BookId.fromJson(json['offered_book_id']),
      status: json['status'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$TradeRequestLiteModelImplToJson(
        _$TradeRequestLiteModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'requester_id': instance.requesterId.toJson(),
      'owner_id': instance.ownerId.toJson(),
      'book_id': instance.bookId.toJson(),
      'offered_book_id': instance.offeredBookId?.toJson(),
      'status': instance.status,
      'created_at': instance.createdAt.toIso8601String(),
    };

_$TradeRequestDetailModelImpl _$$TradeRequestDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TradeRequestDetailModelImpl(
      id: TradeRequestId.fromJson(json['id']),
      requesterId: ProfileId.fromJson(json['requester_id']),
      ownerId: ProfileId.fromJson(json['owner_id']),
      bookId: BookId.fromJson(json['book_id']),
      offeredBookId: json['offered_book_id'] == null
          ? null
          : BookId.fromJson(json['offered_book_id']),
      status: json['status'] as String,
      message: json['message'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      requester:
          ProfileLiteModel.fromJson(json['requester'] as Map<String, dynamic>),
      owner: ProfileLiteModel.fromJson(json['owner'] as Map<String, dynamic>),
      book: BookLiteModel.fromJson(json['book'] as Map<String, dynamic>),
      offeredBook: json['offeredBook'] == null
          ? null
          : BookLiteModel.fromJson(json['offeredBook'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TradeRequestDetailModelImplToJson(
        _$TradeRequestDetailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'requester_id': instance.requesterId.toJson(),
      'owner_id': instance.ownerId.toJson(),
      'book_id': instance.bookId.toJson(),
      'offered_book_id': instance.offeredBookId?.toJson(),
      'status': instance.status,
      'message': instance.message,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'requester': instance.requester.toJson(),
      'owner': instance.owner.toJson(),
      'book': instance.book.toJson(),
      'offeredBook': instance.offeredBook?.toJson(),
    };

_$TradeRequestCreateParamImpl _$$TradeRequestCreateParamImplFromJson(
        Map<String, dynamic> json) =>
    _$TradeRequestCreateParamImpl(
      requesterId: ProfileId.fromJson(json['requester_id']),
      ownerId: ProfileId.fromJson(json['owner_id']),
      bookId: BookId.fromJson(json['book_id']),
      offeredBookId: json['offered_book_id'] == null
          ? null
          : BookId.fromJson(json['offered_book_id']),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$TradeRequestCreateParamImplToJson(
        _$TradeRequestCreateParamImpl instance) =>
    <String, dynamic>{
      'requester_id': instance.requesterId.toJson(),
      'owner_id': instance.ownerId.toJson(),
      'book_id': instance.bookId.toJson(),
      'offered_book_id': instance.offeredBookId?.toJson(),
      'message': instance.message,
    };

_$TradeRequestUpdateParamImpl _$$TradeRequestUpdateParamImplFromJson(
        Map<String, dynamic> json) =>
    _$TradeRequestUpdateParamImpl(
      status: json['status'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$TradeRequestUpdateParamImplToJson(
        _$TradeRequestUpdateParamImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

// **************************************************************************
// TableModelGenerator
// **************************************************************************

const _tableTradeRequestModel = TableBuilder(
  tableName: "trade_requests",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('requester_id'),
    ColumnBuilder('owner_id'),
    ColumnBuilder('book_id'),
    ColumnBuilder('offered_book_id'),
    ColumnBuilder('status'),
    ColumnBuilder('message'),
    ColumnBuilder('created_at'),
    ColumnBuilder('updated_at'),
    ColumnBuilder.join(ProfileLiteModel.table,
        key: "requester", candidateKey: 'id', foreignKey: 'requester_id'),
    ColumnBuilder.join(ProfileLiteModel.table,
        key: "owner", candidateKey: 'id', foreignKey: 'owner_id'),
    ColumnBuilder.join(BookLiteModel.table,
        key: "book", candidateKey: 'id', foreignKey: 'book_id'),
    ColumnBuilder.join(BookLiteModel.table,
        key: "offeredBook", candidateKey: 'id', foreignKey: 'offered_book_id'),
  ],
);

const _tableTradeRequestLiteModel = TableBuilder(
  tableName: "trade_requests",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('requester_id'),
    ColumnBuilder('owner_id'),
    ColumnBuilder('book_id'),
    ColumnBuilder('offered_book_id'),
    ColumnBuilder('status'),
    ColumnBuilder('created_at'),
  ],
);

const _tableTradeRequestDetailModel = TableBuilder(
  tableName: "trade_requests",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('requester_id'),
    ColumnBuilder('owner_id'),
    ColumnBuilder('book_id'),
    ColumnBuilder('offered_book_id'),
    ColumnBuilder('status'),
    ColumnBuilder('message'),
    ColumnBuilder('created_at'),
    ColumnBuilder('updated_at'),
    ColumnBuilder.join(ProfileLiteModel.table,
        key: "requester", candidateKey: 'id', foreignKey: 'requester_id'),
    ColumnBuilder.join(ProfileLiteModel.table,
        key: "owner", candidateKey: 'id', foreignKey: 'owner_id'),
    ColumnBuilder.join(BookLiteModel.table,
        key: "book", candidateKey: 'id', foreignKey: 'book_id'),
    ColumnBuilder.join(BookLiteModel.table,
        key: "offeredBook", candidateKey: 'id', foreignKey: 'offered_book_id'),
  ],
);
