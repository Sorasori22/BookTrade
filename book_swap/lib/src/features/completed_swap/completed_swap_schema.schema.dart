// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// KimappSchemaGenerator
// **************************************************************************

// ignore_for_file: invalid_annotation_target, unused_import, require_trailing_commas
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kimapp/kimapp.dart';

import 'package:book_swap/src/features/book/book_schema.schema.dart';
import 'package:book_swap/src/features/profile/profile_schema.schema.dart';
import 'completed_swap_schema.dart';

part 'completed_swap_schema.schema.freezed.dart';
part 'completed_swap_schema.schema.g.dart';

/// Defines the table structure for CompletedSwap.
/// This class provides constant string values for table and column names,
/// facilitating type-safe database operations and query building.
class CompletedSwapTable {
  const CompletedSwapTable._();

  /// The name of the database table for CompletedSwap entities.
  /// Use this constant for constructing SQL queries to ensure consistency.
  static const String table = "completed_swaps";

  /// Column: id
  /// This is the primary key column for the CompletedSwap table.
  /// Data type: `int`
  /// Key: `id`
  static const String id = "id";

  /// Column: requester_id
  /// Data type: `ProfileId`
  /// Key: `requester_id`
  static const String requesterId = "requester_id";

  /// Column: owner_id
  /// Data type: `ProfileId`
  /// Key: `owner_id`
  static const String ownerId = "owner_id";

  /// Column: requester_book_id
  /// Data type: `BookId`
  /// Key: `requester_book_id`
  static const String requesterBookId = "requester_book_id";

  /// Column: owner_book_id
  /// Data type: `BookId`
  /// Key: `owner_book_id`
  static const String ownerBookId = "owner_book_id";

  /// Column: trade_request_id
  /// Data type: `int?`
  /// Key: `trade_request_id`
  static const String tradeRequestId = "trade_request_id";

  /// Column: completed_at
  /// Data type: `DateTime`
  /// Key: `completed_at`
  static const String completedAt = "completed_at";

  /// Column: requester_id
  /// This is a join key for field requester.
  /// Data type: `ProfileLiteModel`
  /// Key: `requester`
  static const String requester = "requester";

  /// Column: owner_id
  /// This is a join key for field owner.
  /// Data type: `ProfileLiteModel`
  /// Key: `owner`
  static const String owner = "owner";

  /// Column: requester_book_id
  /// This is a join key for field requesterBook.
  /// Data type: `BookLiteModel`
  /// Key: `requesterBook`
  static const String requesterBook = "requesterBook";

  /// Column: owner_book_id
  /// This is a join key for field ownerBook.
  /// Data type: `BookLiteModel`
  /// Key: `ownerBook`
  static const String ownerBook = "ownerBook";
}

/// Represents the unique identifier for a CompletedSwap.
/// This class wraps the `int` value, providing type safety and encapsulation.
class CompletedSwapId extends Identity<int> {
  const CompletedSwapId._(this.value);

  @override
  final int value;

  /// Creates an instance of CompletedSwapId from a JSON value.
  /// Accepts int representations.
  /// Throws ArgumentError if the value is null or not of type int.
  factory CompletedSwapId.fromJson(dynamic value) {
    if (value is int) {
      return CompletedSwapId._(value);
    } else if (value == null) {
      throw ArgumentError.notNull('value');
    } else {
      throw ArgumentError(
          'Value of CompletedSwapId must be of type int, but was ${value.runtimeType}. Please provide the correct type.');
    }
  }

  /// Creates an instance of CompletedSwapId from a int value.
  factory CompletedSwapId.fromValue(int value) {
    return CompletedSwapId._(value);
  }

  /// Creates an instance of CompletedSwapId with a value of -1.
  /// This is used to represent an empty or invalid CompletedSwapId for placeholder or default values of form fields.
  /// WARNING: This is not a valid CompletedSwapId access it value through [value] or [call] will throw an error.
  factory CompletedSwapId.empty() => CompletedSwapId._(-1);
}

/// Base class of this schema, this is the parent of all generated models in this schema
abstract class BaseCompletedSwapSchema {}

/// Base model class for this schema, this includes all properties of the base model, and get inherited by all generated models in this schema where [inheritAllFromBase()] is called and without any excepted fields.
abstract class ICompletedSwapModel {
  CompletedSwapId get id;
  ProfileId get requesterId;
  ProfileId get ownerId;
  BookId get requesterBookId;
  BookId get ownerBookId;
  int? get tradeRequestId;
  DateTime get completedAt;
  ProfileLiteModel get requester;
  ProfileLiteModel get owner;
  BookLiteModel get requesterBook;
  BookLiteModel get ownerBook;
}

/// Base model class for CompletedSwapModel.
@freezed
sealed class CompletedSwapModel
    with _$CompletedSwapModel
    implements BaseCompletedSwapSchema, ICompletedSwapModel {
  const CompletedSwapModel._();

  /// Constructor for CompletedSwapModel.
  ///
  /// This class was generated by the Kimapp generator based on KimappSchema.
  ///
  /// Table Mode: `enabled` (`completed_swaps`)
  ///
  /// Fields:
  /// - CompletedSwapId id : JsonKey('id')
  /// - ProfileId requesterId : JsonKey('requester_id')
  /// - ProfileId ownerId : JsonKey('owner_id')
  /// - BookId requesterBookId : JsonKey('requester_book_id')
  /// - BookId ownerBookId : JsonKey('owner_book_id')
  /// - int? tradeRequestId : JsonKey('trade_request_id')
  /// - DateTime completedAt : JsonKey('completed_at')
  /// - ProfileLiteModel requester : JsonKey('requester')
  /// - ProfileLiteModel owner : JsonKey('owner')
  /// - BookLiteModel requesterBook : JsonKey('requesterBook')
  /// - BookLiteModel ownerBook : JsonKey('ownerBook')
  @TableModel(CompletedSwapModel.tableName)
  @JsonSerializable(explicitToJson: true)
  const factory CompletedSwapModel({
    @JsonKey(name: CompletedSwapModel.idKey) required CompletedSwapId id,
    @JsonKey(name: CompletedSwapModel.requesterIdKey)
    required ProfileId requesterId,
    @JsonKey(name: CompletedSwapModel.ownerIdKey) required ProfileId ownerId,
    @JsonKey(name: CompletedSwapModel.requesterBookIdKey)
    required BookId requesterBookId,
    @JsonKey(name: CompletedSwapModel.ownerBookIdKey)
    required BookId ownerBookId,
    @JsonKey(name: CompletedSwapModel.tradeRequestIdKey)
    required int? tradeRequestId,
    @JsonKey(name: CompletedSwapModel.completedAtKey)
    required DateTime completedAt,
    @JoinedColumn(foreignKey: "requester_id", candidateKey: "id")
    @JsonKey(name: CompletedSwapModel.requesterKey)
    required ProfileLiteModel requester,
    @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
    @JsonKey(name: CompletedSwapModel.ownerKey)
    required ProfileLiteModel owner,
    @JoinedColumn(foreignKey: "requester_book_id", candidateKey: "id")
    @JsonKey(name: CompletedSwapModel.requesterBookKey)
    required BookLiteModel requesterBook,
    @JoinedColumn(foreignKey: "owner_book_id", candidateKey: "id")
    @JsonKey(name: CompletedSwapModel.ownerBookKey)
    required BookLiteModel ownerBook,
  }) = _CompletedSwapModel;

  /// Creates an instance of CompletedSwapModel from a JSON map.
  factory CompletedSwapModel.fromJson(Map<String, dynamic> json) =>
      _$CompletedSwapModelFromJson(json);

  /// Supabase table configuration for this model.
  static const TableBuilder table = _tableCompletedSwapModel;

  /// Table name: `completed_swaps`
  static const String tableName = "completed_swaps";

  /// Field name for id field with JsonKey('id')
  static const String idKey = "id";

  /// Field name for requesterId field with JsonKey('requester_id')
  static const String requesterIdKey = "requester_id";

  /// Field name for ownerId field with JsonKey('owner_id')
  static const String ownerIdKey = "owner_id";

  /// Field name for requesterBookId field with JsonKey('requester_book_id')
  static const String requesterBookIdKey = "requester_book_id";

  /// Field name for ownerBookId field with JsonKey('owner_book_id')
  static const String ownerBookIdKey = "owner_book_id";

  /// Field name for tradeRequestId field with JsonKey('trade_request_id')
  static const String tradeRequestIdKey = "trade_request_id";

  /// Field name for completedAt field with JsonKey('completed_at')
  static const String completedAtKey = "completed_at";

  /// Field name for requester field with JsonKey('requester')
  /// This is json key for joined field. with foreign key: requester_id and candidate key: id
  static const String requesterKey = "requester";

  /// Field name for owner field with JsonKey('owner')
  /// This is json key for joined field. with foreign key: owner_id and candidate key: id
  static const String ownerKey = "owner";

  /// Field name for requesterBook field with JsonKey('requesterBook')
  /// This is json key for joined field. with foreign key: requester_book_id and candidate key: id
  static const String requesterBookKey = "requesterBook";

  /// Field name for ownerBook field with JsonKey('ownerBook')
  /// This is json key for joined field. with foreign key: owner_book_id and candidate key: id
  static const String ownerBookKey = "ownerBook";
}

/// Represents the CompletedSwapLiteModel model. generated by kimapp_generator
@freezed
sealed class CompletedSwapLiteModel
    with _$CompletedSwapLiteModel
    implements BaseCompletedSwapSchema {
  const CompletedSwapLiteModel._();

  /// Constructor for CompletedSwapLiteModel.
  ///
  /// This class was generated by the Kimapp generator based on KimappSchema.
  ///
  /// Table Mode: `enabled`
  /// Table Name: `completed_swaps`
  ///
  /// Fields:
  /// - CompletedSwapId id : JsonKey('id')
  /// - ProfileId requesterId : JsonKey('requester_id')
  /// - ProfileId ownerId : JsonKey('owner_id')
  /// - BookId requesterBookId : JsonKey('requester_book_id')
  /// - BookId ownerBookId : JsonKey('owner_book_id')
  /// - DateTime completedAt : JsonKey('completed_at')
  @TableModel(CompletedSwapLiteModel.tableName)
  @JsonSerializable(explicitToJson: true)
  const factory CompletedSwapLiteModel({
    @JsonKey(name: CompletedSwapLiteModel.idKey) required CompletedSwapId id,
    @JsonKey(name: CompletedSwapLiteModel.requesterIdKey)
    required ProfileId requesterId,
    @JsonKey(name: CompletedSwapLiteModel.ownerIdKey)
    required ProfileId ownerId,
    @JsonKey(name: CompletedSwapLiteModel.requesterBookIdKey)
    required BookId requesterBookId,
    @JsonKey(name: CompletedSwapLiteModel.ownerBookIdKey)
    required BookId ownerBookId,
    @JsonKey(name: CompletedSwapLiteModel.completedAtKey)
    required DateTime completedAt,
  }) = _CompletedSwapLiteModel;

  /// Creates an instance of CompletedSwapLiteModel from a JSON map.
  factory CompletedSwapLiteModel.fromJson(Map<String, dynamic> json) =>
      _$CompletedSwapLiteModelFromJson(json);

  /// Supabase table configuration for this model.
  static const TableBuilder table = _tableCompletedSwapLiteModel;

  /// Table name: `completed_swaps`
  static const String tableName = "completed_swaps";

  /// Field name for id field with JsonKey('id')
  static const String idKey = "id";

  /// Field name for requesterId field with JsonKey('requester_id')
  static const String requesterIdKey = "requester_id";

  /// Field name for ownerId field with JsonKey('owner_id')
  static const String ownerIdKey = "owner_id";

  /// Field name for requesterBookId field with JsonKey('requester_book_id')
  static const String requesterBookIdKey = "requester_book_id";

  /// Field name for ownerBookId field with JsonKey('owner_book_id')
  static const String ownerBookIdKey = "owner_book_id";

  /// Field name for completedAt field with JsonKey('completed_at')
  static const String completedAtKey = "completed_at";
}

/// Represents the CompletedSwapDetailModel model. generated by kimapp_generator
@freezed
sealed class CompletedSwapDetailModel
    with _$CompletedSwapDetailModel
    implements BaseCompletedSwapSchema, ICompletedSwapModel {
  const CompletedSwapDetailModel._();

  /// Constructor for CompletedSwapDetailModel.
  ///
  /// This class was generated by the Kimapp generator based on KimappSchema.
  ///
  /// Table Mode: `enabled`
  /// Table Name: `completed_swaps`
  ///
  /// Fields:
  /// - CompletedSwapId id : JsonKey('id')
  /// - ProfileId requesterId : JsonKey('requester_id')
  /// - ProfileId ownerId : JsonKey('owner_id')
  /// - BookId requesterBookId : JsonKey('requester_book_id')
  /// - BookId ownerBookId : JsonKey('owner_book_id')
  /// - int? tradeRequestId : JsonKey('trade_request_id')
  /// - DateTime completedAt : JsonKey('completed_at')
  /// - ProfileLiteModel requester : JsonKey('requester')
  /// - ProfileLiteModel owner : JsonKey('owner')
  /// - BookLiteModel requesterBook : JsonKey('requesterBook')
  /// - BookLiteModel ownerBook : JsonKey('ownerBook')
  @TableModel(CompletedSwapDetailModel.tableName)
  @JsonSerializable(explicitToJson: true)
  const factory CompletedSwapDetailModel({
    @JsonKey(name: CompletedSwapDetailModel.idKey) required CompletedSwapId id,
    @JsonKey(name: CompletedSwapDetailModel.requesterIdKey)
    required ProfileId requesterId,
    @JsonKey(name: CompletedSwapDetailModel.ownerIdKey)
    required ProfileId ownerId,
    @JsonKey(name: CompletedSwapDetailModel.requesterBookIdKey)
    required BookId requesterBookId,
    @JsonKey(name: CompletedSwapDetailModel.ownerBookIdKey)
    required BookId ownerBookId,
    @JsonKey(name: CompletedSwapDetailModel.tradeRequestIdKey)
    required int? tradeRequestId,
    @JsonKey(name: CompletedSwapDetailModel.completedAtKey)
    required DateTime completedAt,
    @JoinedColumn(foreignKey: "requester_id", candidateKey: "id")
    @JsonKey(name: CompletedSwapDetailModel.requesterKey)
    required ProfileLiteModel requester,
    @JoinedColumn(foreignKey: "owner_id", candidateKey: "id")
    @JsonKey(name: CompletedSwapDetailModel.ownerKey)
    required ProfileLiteModel owner,
    @JoinedColumn(foreignKey: "requester_book_id", candidateKey: "id")
    @JsonKey(name: CompletedSwapDetailModel.requesterBookKey)
    required BookLiteModel requesterBook,
    @JoinedColumn(foreignKey: "owner_book_id", candidateKey: "id")
    @JsonKey(name: CompletedSwapDetailModel.ownerBookKey)
    required BookLiteModel ownerBook,
  }) = _CompletedSwapDetailModel;

  /// Creates an instance of CompletedSwapDetailModel from a JSON map.
  factory CompletedSwapDetailModel.fromJson(Map<String, dynamic> json) =>
      _$CompletedSwapDetailModelFromJson(json);

  /// Supabase table configuration for this model.
  static const TableBuilder table = _tableCompletedSwapDetailModel;

  /// Table name: `completed_swaps`
  static const String tableName = "completed_swaps";

  /// Field name for id field with JsonKey('id')
  static const String idKey = "id";

  /// Field name for requesterId field with JsonKey('requester_id')
  static const String requesterIdKey = "requester_id";

  /// Field name for ownerId field with JsonKey('owner_id')
  static const String ownerIdKey = "owner_id";

  /// Field name for requesterBookId field with JsonKey('requester_book_id')
  static const String requesterBookIdKey = "requester_book_id";

  /// Field name for ownerBookId field with JsonKey('owner_book_id')
  static const String ownerBookIdKey = "owner_book_id";

  /// Field name for tradeRequestId field with JsonKey('trade_request_id')
  static const String tradeRequestIdKey = "trade_request_id";

  /// Field name for completedAt field with JsonKey('completed_at')
  static const String completedAtKey = "completed_at";

  /// Field name for requester field with JsonKey('requester')
  /// This is json key for joined field. with foreign key: requester_id and candidate key: id
  static const String requesterKey = "requester";

  /// Field name for owner field with JsonKey('owner')
  /// This is json key for joined field. with foreign key: owner_id and candidate key: id
  static const String ownerKey = "owner";

  /// Field name for requesterBook field with JsonKey('requesterBook')
  /// This is json key for joined field. with foreign key: requester_book_id and candidate key: id
  static const String requesterBookKey = "requesterBook";

  /// Field name for ownerBook field with JsonKey('ownerBook')
  /// This is json key for joined field. with foreign key: owner_book_id and candidate key: id
  static const String ownerBookKey = "ownerBook";

  /// Converts this model to a base model.
  CompletedSwapModel toCompletedSwapModel() {
    return CompletedSwapModel(
      id: id,
      requesterId: requesterId,
      ownerId: ownerId,
      requesterBookId: requesterBookId,
      ownerBookId: ownerBookId,
      tradeRequestId: tradeRequestId,
      completedAt: completedAt,
      requester: requester,
      owner: owner,
      requesterBook: requesterBook,
      ownerBook: ownerBook,
    );
  }
}

/// Represents the CompletedSwapCreateParam model. generated by kimapp_generator
@freezed
sealed class CompletedSwapCreateParam
    with _$CompletedSwapCreateParam
    implements BaseCompletedSwapSchema {
  const CompletedSwapCreateParam._();

  /// Constructor for CompletedSwapCreateParam.
  ///
  /// This class was generated by the Kimapp generator based on KimappSchema.
  ///
  /// Table Mode: `disabled`
  ///
  /// Fields:
  /// - ProfileId requesterId : JsonKey('requester_id')
  /// - ProfileId ownerId : JsonKey('owner_id')
  /// - BookId requesterBookId : JsonKey('requester_book_id')
  /// - BookId ownerBookId : JsonKey('owner_book_id')
  /// - int? tradeRequestId : JsonKey('trade_request_id')
  @JsonSerializable(explicitToJson: true)
  const factory CompletedSwapCreateParam({
    @JsonKey(name: CompletedSwapCreateParam.requesterIdKey)
    required ProfileId requesterId,
    @JsonKey(name: CompletedSwapCreateParam.ownerIdKey)
    required ProfileId ownerId,
    @JsonKey(name: CompletedSwapCreateParam.requesterBookIdKey)
    required BookId requesterBookId,
    @JsonKey(name: CompletedSwapCreateParam.ownerBookIdKey)
    required BookId ownerBookId,
    @JsonKey(name: CompletedSwapCreateParam.tradeRequestIdKey)
    required int? tradeRequestId,
  }) = _CompletedSwapCreateParam;

  /// Creates an instance of CompletedSwapCreateParam from a JSON map.
  factory CompletedSwapCreateParam.fromJson(Map<String, dynamic> json) =>
      _$CompletedSwapCreateParamFromJson(json);

  /// Field name for requesterId field with JsonKey('requester_id')
  static const String requesterIdKey = "requester_id";

  /// Field name for ownerId field with JsonKey('owner_id')
  static const String ownerIdKey = "owner_id";

  /// Field name for requesterBookId field with JsonKey('requester_book_id')
  static const String requesterBookIdKey = "requester_book_id";

  /// Field name for ownerBookId field with JsonKey('owner_book_id')
  static const String ownerBookIdKey = "owner_book_id";

  /// Field name for tradeRequestId field with JsonKey('trade_request_id')
  static const String tradeRequestIdKey = "trade_request_id";
}

/// Represents the CompletedSwapUpdateParam model. generated by kimapp_generator
@freezed
sealed class CompletedSwapUpdateParam
    with _$CompletedSwapUpdateParam
    implements BaseCompletedSwapSchema {
  const CompletedSwapUpdateParam._();

  /// Constructor for CompletedSwapUpdateParam.
  ///
  /// This class was generated by the Kimapp generator based on KimappSchema.
  ///
  /// Table Mode: `disabled`
  ///
  /// Fields:
  /// - DateTime? completedAt : JsonKey('completed_at')
  @JsonSerializable(explicitToJson: true)
  const factory CompletedSwapUpdateParam({
    @JsonKey(name: CompletedSwapUpdateParam.completedAtKey)
    required DateTime? completedAt,
  }) = _CompletedSwapUpdateParam;

  /// Creates an instance of CompletedSwapUpdateParam from a JSON map.
  factory CompletedSwapUpdateParam.fromJson(Map<String, dynamic> json) =>
      _$CompletedSwapUpdateParamFromJson(json);

  /// Field name for completedAt field with JsonKey('completed_at')
  static const String completedAtKey = "completed_at";
}
