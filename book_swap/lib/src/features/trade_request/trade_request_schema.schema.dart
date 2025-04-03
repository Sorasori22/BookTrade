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
import 'trade_request_schema.dart';

part 'trade_request_schema.schema.freezed.dart';
part 'trade_request_schema.schema.g.dart';

/// Defines the table structure for TradeRequest.
/// This class provides constant string values for table and column names,
/// facilitating type-safe database operations and query building.
class TradeRequestTable {
  const TradeRequestTable._();

  /// The name of the database table for TradeRequest entities.
  /// Use this constant for constructing SQL queries to ensure consistency.
  static const String table = "trade_requests";

  /// Column: id
  /// This is the primary key column for the TradeRequest table.
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

  /// Column: book_id
  /// Data type: `BookId`
  /// Key: `book_id`
  static const String bookId = "book_id";

  /// Column: offered_book_id
  /// Data type: `BookId?`
  /// Key: `offered_book_id`
  static const String offeredBookId = "offered_book_id";

  /// Column: status
  /// Data type: `TradeRequestStatus`
  /// Key: `status`
  static const String status = "status";

  /// Column: created_at
  /// Data type: `DateTime`
  /// Key: `created_at`
  static const String createdAt = "created_at";

  /// Column: updated_at
  /// Data type: `DateTime`
  /// Key: `updated_at`
  static const String updatedAt = "updated_at";

  /// Column: reject_reason
  /// Data type: `String?`
  /// Key: `reject_reason`
  static const String rejectReason = "reject_reason";

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

  /// Column: book_id
  /// This is a join key for field book.
  /// Data type: `BookLiteModel`
  /// Key: `book`
  static const String book = "book";

  /// Column: offered_book_id
  /// This is a join key for field offeredBook.
  /// Data type: `BookLiteModel?`
  /// Key: `offeredBook`
  static const String offeredBook = "offeredBook";
}

/// Represents the unique identifier for a TradeRequest.
/// This class wraps the `int` value, providing type safety and encapsulation.
class TradeRequestId extends Identity<int> {
  const TradeRequestId._(this.value);

  @override
  final int value;

  /// Creates an instance of TradeRequestId from a JSON value.
  /// Accepts int representations.
  /// Throws ArgumentError if the value is null or not of type int.
  factory TradeRequestId.fromJson(dynamic value) {
    if (value is int) {
      return TradeRequestId._(value);
    } else if (value == null) {
      throw ArgumentError.notNull('value');
    } else {
      throw ArgumentError(
          'Value of TradeRequestId must be of type int, but was ${value.runtimeType}. Please provide the correct type.');
    }
  }

  /// Creates an instance of TradeRequestId from a int value.
  factory TradeRequestId.fromValue(int value) {
    return TradeRequestId._(value);
  }

  /// Creates an instance of TradeRequestId with a value of -1.
  /// This is used to represent an empty or invalid TradeRequestId for placeholder or default values of form fields.
  /// WARNING: This is not a valid TradeRequestId access it value through [value] or [call] will throw an error.
  factory TradeRequestId.empty() => TradeRequestId._(-1);
}

/// Base class of this schema, this is the parent of all generated models in this schema
abstract class BaseTradeRequestSchema {}

/// Base model class for this schema, this includes all properties of the base model, and get inherited by all generated models in this schema where [inheritAllFromBase()] is called and without any excepted fields.
abstract class ITradeRequestModel {
  TradeRequestId get id;
  ProfileId get requesterId;
  ProfileId get ownerId;
  BookId get bookId;
  BookId? get offeredBookId;
  TradeRequestStatus get status;
  DateTime get createdAt;
  DateTime get updatedAt;
  String? get rejectReason;
  ProfileLiteModel get requester;
  ProfileLiteModel get owner;
  BookLiteModel get book;
  BookLiteModel? get offeredBook;
}

/// Base model class for TradeRequestModel.
@freezed
sealed class TradeRequestModel
    with _$TradeRequestModel
    implements BaseTradeRequestSchema, ITradeRequestModel {
  const TradeRequestModel._();

  /// Constructor for TradeRequestModel.
  ///
  /// This class was generated by the Kimapp generator based on KimappSchema.
  ///
  /// Table Mode: `enabled` (`trade_requests`)
  ///
  /// Fields:
  /// - TradeRequestId id : JsonKey('id')
  /// - ProfileId requesterId : JsonKey('requester_id')
  /// - ProfileId ownerId : JsonKey('owner_id')
  /// - BookId bookId : JsonKey('book_id')
  /// - BookId? offeredBookId : JsonKey('offered_book_id')
  /// - TradeRequestStatus status : JsonKey('status')
  /// - DateTime createdAt : JsonKey('created_at')
  /// - DateTime updatedAt : JsonKey('updated_at')
  /// - String? rejectReason : JsonKey('reject_reason')
  /// - ProfileLiteModel requester : JsonKey('requester')
  /// - ProfileLiteModel owner : JsonKey('owner')
  /// - BookLiteModel book : JsonKey('book')
  /// - BookLiteModel? offeredBook : JsonKey('offeredBook')
  @TableModel(TradeRequestModel.tableName)
  @JsonSerializable(explicitToJson: true)
  const factory TradeRequestModel({
    @JsonKey(name: TradeRequestModel.idKey) required TradeRequestId id,
    @JsonKey(name: TradeRequestModel.requesterIdKey)
    required ProfileId requesterId,
    @JsonKey(name: TradeRequestModel.ownerIdKey) required ProfileId ownerId,
    @JsonKey(name: TradeRequestModel.bookIdKey) required BookId bookId,
    @JsonKey(name: TradeRequestModel.offeredBookIdKey)
    required BookId? offeredBookId,
    @JsonKey(name: TradeRequestModel.statusKey)
    required TradeRequestStatus status,
    @JsonKey(name: TradeRequestModel.createdAtKey) required DateTime createdAt,
    @JsonKey(name: TradeRequestModel.updatedAtKey) required DateTime updatedAt,
    @JsonKey(name: TradeRequestModel.rejectReasonKey)
    required String? rejectReason,
    @JoinedColumn(foreignKey: "requester_id", candidateKey: null)
    @JsonKey(name: TradeRequestModel.requesterKey)
    required ProfileLiteModel requester,
    @JoinedColumn(foreignKey: "owner_id", candidateKey: null)
    @JsonKey(name: TradeRequestModel.ownerKey)
    required ProfileLiteModel owner,
    @JoinedColumn(foreignKey: "book_id", candidateKey: null)
    @JsonKey(name: TradeRequestModel.bookKey)
    required BookLiteModel book,
    @JoinedColumn(foreignKey: "offered_book_id", candidateKey: null)
    @JsonKey(name: TradeRequestModel.offeredBookKey)
    required BookLiteModel? offeredBook,
  }) = _TradeRequestModel;

  /// Creates an instance of TradeRequestModel from a JSON map.
  factory TradeRequestModel.fromJson(Map<String, dynamic> json) =>
      _$TradeRequestModelFromJson(json);

  /// Supabase table configuration for this model.
  static const TableBuilder table = _tableTradeRequestModel;

  /// Table name: `trade_requests`
  static const String tableName = "trade_requests";

  /// Field name for id field with JsonKey('id')
  static const String idKey = "id";

  /// Field name for requesterId field with JsonKey('requester_id')
  static const String requesterIdKey = "requester_id";

  /// Field name for ownerId field with JsonKey('owner_id')
  static const String ownerIdKey = "owner_id";

  /// Field name for bookId field with JsonKey('book_id')
  static const String bookIdKey = "book_id";

  /// Field name for offeredBookId field with JsonKey('offered_book_id')
  static const String offeredBookIdKey = "offered_book_id";

  /// Field name for status field with JsonKey('status')
  static const String statusKey = "status";

  /// Field name for createdAt field with JsonKey('created_at')
  static const String createdAtKey = "created_at";

  /// Field name for updatedAt field with JsonKey('updated_at')
  static const String updatedAtKey = "updated_at";

  /// Field name for rejectReason field with JsonKey('reject_reason')
  static const String rejectReasonKey = "reject_reason";

  /// Field name for requester field with JsonKey('requester')
  /// This is json key for joined field. with foreign key: requester_id and candidate key: null
  static const String requesterKey = "requester";

  /// Field name for owner field with JsonKey('owner')
  /// This is json key for joined field. with foreign key: owner_id and candidate key: null
  static const String ownerKey = "owner";

  /// Field name for book field with JsonKey('book')
  /// This is json key for joined field. with foreign key: book_id and candidate key: null
  static const String bookKey = "book";

  /// Field name for offeredBook field with JsonKey('offeredBook')
  /// This is json key for joined field. with foreign key: offered_book_id and candidate key: null
  static const String offeredBookKey = "offeredBook";
}

/// Represents the TradeRequestLiteModel model. generated by kimapp_generator
@freezed
sealed class TradeRequestLiteModel
    with _$TradeRequestLiteModel
    implements BaseTradeRequestSchema {
  const TradeRequestLiteModel._();

  /// Constructor for TradeRequestLiteModel.
  ///
  /// This class was generated by the Kimapp generator based on KimappSchema.
  ///
  /// Table Mode: `enabled`
  /// Table Name: `trade_requests`
  ///
  /// Fields:
  /// - TradeRequestId id : JsonKey('id')
  /// - ProfileId requesterId : JsonKey('requester_id')
  /// - ProfileLiteModel requester : JsonKey('requester')
  /// - ProfileId ownerId : JsonKey('owner_id')
  /// - BookId bookId : JsonKey('book_id')
  /// - BookId? offeredBookId : JsonKey('offered_book_id')
  /// - TradeRequestStatus status : JsonKey('status')
  /// - DateTime createdAt : JsonKey('created_at')
  /// - BookLiteModel book : JsonKey('book')
  /// - BookLiteModel? offeredBook : JsonKey('offeredBook')
  /// - String? rejectReason : JsonKey('reject_reason')
  @TableModel(TradeRequestLiteModel.tableName)
  @JsonSerializable(explicitToJson: true)
  const factory TradeRequestLiteModel({
    @JsonKey(name: TradeRequestLiteModel.idKey) required TradeRequestId id,
    @JsonKey(name: TradeRequestLiteModel.requesterIdKey)
    required ProfileId requesterId,
    @JoinedColumn(foreignKey: "requester_id", candidateKey: null)
    @JsonKey(name: TradeRequestLiteModel.requesterKey)
    required ProfileLiteModel requester,
    @JsonKey(name: TradeRequestLiteModel.ownerIdKey) required ProfileId ownerId,
    @JsonKey(name: TradeRequestLiteModel.bookIdKey) required BookId bookId,
    @JsonKey(name: TradeRequestLiteModel.offeredBookIdKey)
    required BookId? offeredBookId,
    @JsonKey(name: TradeRequestLiteModel.statusKey)
    required TradeRequestStatus status,
    @JsonKey(name: TradeRequestLiteModel.createdAtKey)
    required DateTime createdAt,
    @JoinedColumn(foreignKey: "book_id", candidateKey: null)
    @JsonKey(name: TradeRequestLiteModel.bookKey)
    required BookLiteModel book,
    @JoinedColumn(foreignKey: "offered_book_id", candidateKey: null)
    @JsonKey(name: TradeRequestLiteModel.offeredBookKey)
    required BookLiteModel? offeredBook,
    @JsonKey(name: TradeRequestLiteModel.rejectReasonKey)
    required String? rejectReason,
  }) = _TradeRequestLiteModel;

  /// Creates an instance of TradeRequestLiteModel from a JSON map.
  factory TradeRequestLiteModel.fromJson(Map<String, dynamic> json) =>
      _$TradeRequestLiteModelFromJson(json);

  /// Supabase table configuration for this model.
  static const TableBuilder table = _tableTradeRequestLiteModel;

  /// Table name: `trade_requests`
  static const String tableName = "trade_requests";

  /// Field name for id field with JsonKey('id')
  static const String idKey = "id";

  /// Field name for requesterId field with JsonKey('requester_id')
  static const String requesterIdKey = "requester_id";

  /// Field name for requester field with JsonKey('requester')
  /// This is json key for joined field. with foreign key: requester_id and candidate key: null
  static const String requesterKey = "requester";

  /// Field name for ownerId field with JsonKey('owner_id')
  static const String ownerIdKey = "owner_id";

  /// Field name for bookId field with JsonKey('book_id')
  static const String bookIdKey = "book_id";

  /// Field name for offeredBookId field with JsonKey('offered_book_id')
  static const String offeredBookIdKey = "offered_book_id";

  /// Field name for status field with JsonKey('status')
  static const String statusKey = "status";

  /// Field name for createdAt field with JsonKey('created_at')
  static const String createdAtKey = "created_at";

  /// Field name for book field with JsonKey('book')
  /// This is json key for joined field. with foreign key: book_id and candidate key: null
  static const String bookKey = "book";

  /// Field name for offeredBook field with JsonKey('offeredBook')
  /// This is json key for joined field. with foreign key: offered_book_id and candidate key: null
  static const String offeredBookKey = "offeredBook";

  /// Field name for rejectReason field with JsonKey('reject_reason')
  static const String rejectReasonKey = "reject_reason";
}

/// Represents the TradeRequestDetailModel model. generated by kimapp_generator
@freezed
sealed class TradeRequestDetailModel
    with _$TradeRequestDetailModel
    implements BaseTradeRequestSchema, ITradeRequestModel {
  const TradeRequestDetailModel._();

  /// Constructor for TradeRequestDetailModel.
  ///
  /// This class was generated by the Kimapp generator based on KimappSchema.
  ///
  /// Table Mode: `enabled`
  /// Table Name: `trade_requests`
  ///
  /// Fields:
  /// - TradeRequestId id : JsonKey('id')
  /// - ProfileId requesterId : JsonKey('requester_id')
  /// - ProfileId ownerId : JsonKey('owner_id')
  /// - BookId bookId : JsonKey('book_id')
  /// - BookId? offeredBookId : JsonKey('offered_book_id')
  /// - TradeRequestStatus status : JsonKey('status')
  /// - DateTime createdAt : JsonKey('created_at')
  /// - DateTime updatedAt : JsonKey('updated_at')
  /// - String? rejectReason : JsonKey('reject_reason')
  /// - ProfileLiteModel requester : JsonKey('requester')
  /// - ProfileLiteModel owner : JsonKey('owner')
  /// - BookLiteModel book : JsonKey('book')
  /// - BookLiteModel? offeredBook : JsonKey('offeredBook')
  @TableModel(TradeRequestDetailModel.tableName)
  @JsonSerializable(explicitToJson: true)
  const factory TradeRequestDetailModel({
    @JsonKey(name: TradeRequestDetailModel.idKey) required TradeRequestId id,
    @JsonKey(name: TradeRequestDetailModel.requesterIdKey)
    required ProfileId requesterId,
    @JsonKey(name: TradeRequestDetailModel.ownerIdKey)
    required ProfileId ownerId,
    @JsonKey(name: TradeRequestDetailModel.bookIdKey) required BookId bookId,
    @JsonKey(name: TradeRequestDetailModel.offeredBookIdKey)
    required BookId? offeredBookId,
    @JsonKey(name: TradeRequestDetailModel.statusKey)
    required TradeRequestStatus status,
    @JsonKey(name: TradeRequestDetailModel.createdAtKey)
    required DateTime createdAt,
    @JsonKey(name: TradeRequestDetailModel.updatedAtKey)
    required DateTime updatedAt,
    @JsonKey(name: TradeRequestDetailModel.rejectReasonKey)
    required String? rejectReason,
    @JoinedColumn(foreignKey: "requester_id", candidateKey: null)
    @JsonKey(name: TradeRequestDetailModel.requesterKey)
    required ProfileLiteModel requester,
    @JoinedColumn(foreignKey: "owner_id", candidateKey: null)
    @JsonKey(name: TradeRequestDetailModel.ownerKey)
    required ProfileLiteModel owner,
    @JoinedColumn(foreignKey: "book_id", candidateKey: null)
    @JsonKey(name: TradeRequestDetailModel.bookKey)
    required BookLiteModel book,
    @JoinedColumn(foreignKey: "offered_book_id", candidateKey: null)
    @JsonKey(name: TradeRequestDetailModel.offeredBookKey)
    required BookLiteModel? offeredBook,
  }) = _TradeRequestDetailModel;

  /// Creates an instance of TradeRequestDetailModel from a JSON map.
  factory TradeRequestDetailModel.fromJson(Map<String, dynamic> json) =>
      _$TradeRequestDetailModelFromJson(json);

  /// Supabase table configuration for this model.
  static const TableBuilder table = _tableTradeRequestDetailModel;

  /// Table name: `trade_requests`
  static const String tableName = "trade_requests";

  /// Field name for id field with JsonKey('id')
  static const String idKey = "id";

  /// Field name for requesterId field with JsonKey('requester_id')
  static const String requesterIdKey = "requester_id";

  /// Field name for ownerId field with JsonKey('owner_id')
  static const String ownerIdKey = "owner_id";

  /// Field name for bookId field with JsonKey('book_id')
  static const String bookIdKey = "book_id";

  /// Field name for offeredBookId field with JsonKey('offered_book_id')
  static const String offeredBookIdKey = "offered_book_id";

  /// Field name for status field with JsonKey('status')
  static const String statusKey = "status";

  /// Field name for createdAt field with JsonKey('created_at')
  static const String createdAtKey = "created_at";

  /// Field name for updatedAt field with JsonKey('updated_at')
  static const String updatedAtKey = "updated_at";

  /// Field name for rejectReason field with JsonKey('reject_reason')
  static const String rejectReasonKey = "reject_reason";

  /// Field name for requester field with JsonKey('requester')
  /// This is json key for joined field. with foreign key: requester_id and candidate key: null
  static const String requesterKey = "requester";

  /// Field name for owner field with JsonKey('owner')
  /// This is json key for joined field. with foreign key: owner_id and candidate key: null
  static const String ownerKey = "owner";

  /// Field name for book field with JsonKey('book')
  /// This is json key for joined field. with foreign key: book_id and candidate key: null
  static const String bookKey = "book";

  /// Field name for offeredBook field with JsonKey('offeredBook')
  /// This is json key for joined field. with foreign key: offered_book_id and candidate key: null
  static const String offeredBookKey = "offeredBook";

  /// Converts this model to a base model.
  TradeRequestModel toTradeRequestModel() {
    return TradeRequestModel(
      id: id,
      requesterId: requesterId,
      ownerId: ownerId,
      bookId: bookId,
      offeredBookId: offeredBookId,
      status: status,
      createdAt: createdAt,
      updatedAt: updatedAt,
      rejectReason: rejectReason,
      requester: requester,
      owner: owner,
      book: book,
      offeredBook: offeredBook,
    );
  }
}

/// Represents the TradeRequestCreateParam model. generated by kimapp_generator
@freezed
sealed class TradeRequestCreateParam
    with _$TradeRequestCreateParam
    implements BaseTradeRequestSchema {
  const TradeRequestCreateParam._();

  /// Constructor for TradeRequestCreateParam.
  ///
  /// This class was generated by the Kimapp generator based on KimappSchema.
  ///
  /// Table Mode: `disabled`
  ///
  /// Fields:
  /// - ProfileId requesterId : JsonKey('requester_id')
  /// - ProfileId ownerId : JsonKey('owner_id')
  /// - BookId bookId : JsonKey('book_id')
  @JsonSerializable(explicitToJson: true)
  const factory TradeRequestCreateParam({
    @JsonKey(name: TradeRequestCreateParam.requesterIdKey)
    required ProfileId requesterId,
    @JsonKey(name: TradeRequestCreateParam.ownerIdKey)
    required ProfileId ownerId,
    @JsonKey(name: TradeRequestCreateParam.bookIdKey) required BookId bookId,
  }) = _TradeRequestCreateParam;

  /// Creates an instance of TradeRequestCreateParam from a JSON map.
  factory TradeRequestCreateParam.fromJson(Map<String, dynamic> json) =>
      _$TradeRequestCreateParamFromJson(json);

  /// Field name for requesterId field with JsonKey('requester_id')
  static const String requesterIdKey = "requester_id";

  /// Field name for ownerId field with JsonKey('owner_id')
  static const String ownerIdKey = "owner_id";

  /// Field name for bookId field with JsonKey('book_id')
  static const String bookIdKey = "book_id";
}

/// Represents the TradeRequestUpdateParam model. generated by kimapp_generator
@freezed
sealed class TradeRequestUpdateParam
    with _$TradeRequestUpdateParam
    implements BaseTradeRequestSchema {
  const TradeRequestUpdateParam._();

  /// Constructor for TradeRequestUpdateParam.
  ///
  /// This class was generated by the Kimapp generator based on KimappSchema.
  ///
  /// Table Mode: `disabled`
  ///
  /// Fields:
  /// - TradeRequestStatus status : JsonKey('status')
  @JsonSerializable(explicitToJson: true)
  const factory TradeRequestUpdateParam({
    @JsonKey(name: TradeRequestUpdateParam.statusKey)
    required TradeRequestStatus status,
  }) = _TradeRequestUpdateParam;

  /// Creates an instance of TradeRequestUpdateParam from a JSON map.
  factory TradeRequestUpdateParam.fromJson(Map<String, dynamic> json) =>
      _$TradeRequestUpdateParamFromJson(json);

  /// Field name for status field with JsonKey('status')
  static const String statusKey = "status";
}
