// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'completed_swap_schema.schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompletedSwapModelImpl _$$CompletedSwapModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CompletedSwapModelImpl(
      id: CompletedSwapId.fromJson(json['id']),
      requesterId: ProfileId.fromJson(json['requester_id']),
      ownerId: ProfileId.fromJson(json['owner_id']),
      requesterBookId: BookId.fromJson(json['requester_book_id']),
      ownerBookId: BookId.fromJson(json['owner_book_id']),
      tradeRequestId: (json['trade_request_id'] as num?)?.toInt(),
      completedAt: DateTime.parse(json['completed_at'] as String),
      requester:
          ProfileLiteModel.fromJson(json['requester'] as Map<String, dynamic>),
      owner: ProfileLiteModel.fromJson(json['owner'] as Map<String, dynamic>),
      requesterBook:
          BookLiteModel.fromJson(json['requesterBook'] as Map<String, dynamic>),
      ownerBook:
          BookLiteModel.fromJson(json['ownerBook'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CompletedSwapModelImplToJson(
        _$CompletedSwapModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'requester_id': instance.requesterId.toJson(),
      'owner_id': instance.ownerId.toJson(),
      'requester_book_id': instance.requesterBookId.toJson(),
      'owner_book_id': instance.ownerBookId.toJson(),
      'trade_request_id': instance.tradeRequestId,
      'completed_at': instance.completedAt.toIso8601String(),
      'requester': instance.requester.toJson(),
      'owner': instance.owner.toJson(),
      'requesterBook': instance.requesterBook.toJson(),
      'ownerBook': instance.ownerBook.toJson(),
    };

// **************************************************************************
// TableModelGenerator
// **************************************************************************

const _tableCompletedSwapModel = TableBuilder(
  tableName: "completed_swaps",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('requester_id'),
    ColumnBuilder('owner_id'),
    ColumnBuilder('requester_book_id'),
    ColumnBuilder('owner_book_id'),
    ColumnBuilder('trade_request_id'),
    ColumnBuilder('completed_at'),
    ColumnBuilder.join(ProfileLiteModel.table,
        key: "requester", candidateKey: null, foreignKey: 'requester_id'),
    ColumnBuilder.join(ProfileLiteModel.table,
        key: "owner", candidateKey: null, foreignKey: 'owner_id'),
    ColumnBuilder.join(BookLiteModel.table,
        key: "requesterBook",
        candidateKey: null,
        foreignKey: 'requester_book_id'),
    ColumnBuilder.join(BookLiteModel.table,
        key: "ownerBook", candidateKey: null, foreignKey: 'owner_book_id'),
  ],
);
