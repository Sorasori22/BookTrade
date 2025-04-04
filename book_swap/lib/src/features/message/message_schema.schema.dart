// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// KimappSchemaGenerator
// **************************************************************************

// ignore_for_file: invalid_annotation_target, unused_import, require_trailing_commas
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kimapp/kimapp.dart';

import 'package:book_swap/src/core/storage/image_object.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:book_swap/src/features/profile/profile_schema.schema.dart';
import 'package:book_swap/src/features/trade_request/trade_request_schema.schema.dart';
import 'message_schema.dart';

part 'message_schema.schema.freezed.dart';
part 'message_schema.schema.g.dart';

/// Defines the table structure for Message.
/// This class provides constant string values for table and column names,
/// facilitating type-safe database operations and query building.
class MessageTable {
  const MessageTable._();

  /// The name of the database table for Message entities.
  /// Use this constant for constructing SQL queries to ensure consistency.
  static const String table = "messages";

  /// Column: id
  /// This is the primary key column for the Message table.
  /// Data type: `int`
  /// Key: `id`
  static const String id = "id";

  /// Column: type
  /// Data type: `MessageType`
  /// Key: `type`
  static const String type = "type";

  /// Column: sender_id
  /// Data type: `ProfileId`
  /// Key: `sender_id`
  static const String senderId = "sender_id";

  /// Column: recipient_id
  /// Data type: `ProfileId`
  /// Key: `recipient_id`
  static const String recipientId = "recipient_id";

  /// Column: content
  /// Data type: `String`
  /// Key: `content`
  static const String content = "content";

  /// Column: read
  /// Data type: `bool`
  /// Key: `read`
  static const String read = "read";

  /// Column: trade_request_id
  /// Data type: `int?`
  /// Key: `trade_request_id`
  static const String tradeRequestId = "trade_request_id";

  /// Column: created_at
  /// Data type: `DateTime`
  /// Key: `created_at`
  static const String createdAt = "created_at";

  /// Column: unsent
  /// Data type: `bool`
  /// Key: `unsent`
  static const String unsent = "unsent";

  /// Column: hidden_from
  /// Data type: `IList<ProfileId>`
  /// Key: `hidden_from`
  static const String hiddenFrom = "hidden_from";

  /// Column: file_path
  /// Data type: `ImageObject?`
  /// Key: `file_path`
  static const String image = "file_path";

  /// Column: recipient_id
  /// This is a join key for field recipient.
  /// Data type: `ProfileLiteModel`
  /// Key: `recipient`
  static const String recipient = "recipient";

  /// Column: trade_request_id
  /// This is a join key for field tradeRequest.
  /// Data type: `TradeRequestLiteModel?`
  /// Key: `tradeRequest`
  static const String tradeRequest = "tradeRequest";
}

/// Represents the unique identifier for a Message.
/// This class wraps the `int` value, providing type safety and encapsulation.
class MessageId extends Identity<int> {
  const MessageId._(this.value);

  @override
  final int value;

  /// Creates an instance of MessageId from a JSON value.
  /// Accepts int representations.
  /// Throws ArgumentError if the value is null or not of type int.
  factory MessageId.fromJson(dynamic value) {
    if (value is int) {
      return MessageId._(value);
    } else if (value == null) {
      throw ArgumentError.notNull('value');
    } else {
      throw ArgumentError(
          'Value of MessageId must be of type int, but was ${value.runtimeType}. Please provide the correct type.');
    }
  }

  /// Creates an instance of MessageId from a int value.
  factory MessageId.fromValue(int value) {
    return MessageId._(value);
  }

  /// Creates an instance of MessageId with a value of -1.
  /// This is used to represent an empty or invalid MessageId for placeholder or default values of form fields.
  /// WARNING: This is not a valid MessageId access it value through [value] or [call] will throw an error.
  factory MessageId.empty() => MessageId._(-1);
}

/// Base class of this schema, this is the parent of all generated models in this schema
abstract class BaseMessageSchema {}

/// Base model class for this schema, this includes all properties of the base model, and get inherited by all generated models in this schema where [inheritAllFromBase()] is called and without any excepted fields.
abstract class IMessageModel {
  MessageId get id;
  MessageType get type;
  ProfileId get senderId;
  ProfileId get recipientId;
  String get content;
  bool get read;
  int? get tradeRequestId;
  DateTime get createdAt;
  bool get unsent;
  IList<ProfileId> get hiddenFrom;
  ImageObject? get image;
  ProfileLiteModel get recipient;
  TradeRequestLiteModel? get tradeRequest;
}

/// Base model class for MessageModel.
@freezed
sealed class MessageModel
    with _$MessageModel
    implements BaseMessageSchema, IMessageModel {
  const MessageModel._();

  /// Constructor for MessageModel.
  ///
  /// This class was generated by the Kimapp generator based on KimappSchema.
  ///
  /// Table Mode: `enabled` (`messages`)
  ///
  /// Fields:
  /// - MessageId id : JsonKey('id')
  /// - MessageType type : JsonKey('type')
  /// - ProfileId senderId : JsonKey('sender_id')
  /// - ProfileId recipientId : JsonKey('recipient_id')
  /// - String content : JsonKey('content')
  /// - bool read : JsonKey('read')
  /// - int? tradeRequestId : JsonKey('trade_request_id')
  /// - DateTime createdAt : JsonKey('created_at')
  /// - bool unsent : JsonKey('unsent')
  /// - IList<ProfileId> hiddenFrom : JsonKey('hidden_from')
  /// - ImageObject? image : JsonKey('file_path')
  /// - ProfileLiteModel recipient : JsonKey('recipient')
  /// - TradeRequestLiteModel? tradeRequest : JsonKey('tradeRequest')
  @TableModel(MessageModel.tableName)
  @JsonSerializable(explicitToJson: true)
  const factory MessageModel({
    @JsonKey(name: MessageModel.idKey) required MessageId id,
    @JsonKey(name: MessageModel.typeKey) required MessageType type,
    @JsonKey(name: MessageModel.senderIdKey) required ProfileId senderId,
    @JsonKey(name: MessageModel.recipientIdKey) required ProfileId recipientId,
    @JsonKey(name: MessageModel.contentKey) required String content,
    @JsonKey(name: MessageModel.readKey) required bool read,
    @JsonKey(name: MessageModel.tradeRequestIdKey) required int? tradeRequestId,
    @JsonKey(name: MessageModel.createdAtKey) required DateTime createdAt,
    @JsonKey(name: MessageModel.unsentKey) required bool unsent,
    @JsonKey(name: MessageModel.hiddenFromKey)
    required IList<ProfileId> hiddenFrom,
    @JsonKey(name: MessageModel.imageKey) required ImageObject? image,
    @JoinedColumn(foreignKey: "recipient_id", candidateKey: null)
    @JsonKey(name: MessageModel.recipientKey)
    required ProfileLiteModel recipient,
    @JoinedColumn(foreignKey: "trade_request_id", candidateKey: null)
    @JsonKey(name: MessageModel.tradeRequestKey)
    required TradeRequestLiteModel? tradeRequest,
  }) = _MessageModel;

  /// Creates an instance of MessageModel from a JSON map.
  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);

  /// Supabase table configuration for this model.
  static const TableBuilder table = _tableMessageModel;

  /// Table name: `messages`
  static const String tableName = "messages";

  /// Field name for id field with JsonKey('id')
  static const String idKey = "id";

  /// Field name for type field with JsonKey('type')
  static const String typeKey = "type";

  /// Field name for senderId field with JsonKey('sender_id')
  static const String senderIdKey = "sender_id";

  /// Field name for recipientId field with JsonKey('recipient_id')
  static const String recipientIdKey = "recipient_id";

  /// Field name for content field with JsonKey('content')
  static const String contentKey = "content";

  /// Field name for read field with JsonKey('read')
  static const String readKey = "read";

  /// Field name for tradeRequestId field with JsonKey('trade_request_id')
  static const String tradeRequestIdKey = "trade_request_id";

  /// Field name for createdAt field with JsonKey('created_at')
  static const String createdAtKey = "created_at";

  /// Field name for unsent field with JsonKey('unsent')
  static const String unsentKey = "unsent";

  /// Field name for hiddenFrom field with JsonKey('hidden_from')
  static const String hiddenFromKey = "hidden_from";

  /// Field name for image field with JsonKey('file_path')
  static const String imageKey = "file_path";

  /// Field name for recipient field with JsonKey('recipient')
  /// This is json key for joined field. with foreign key: recipient_id and candidate key: null
  static const String recipientKey = "recipient";

  /// Field name for tradeRequest field with JsonKey('tradeRequest')
  /// This is json key for joined field. with foreign key: trade_request_id and candidate key: null
  static const String tradeRequestKey = "tradeRequest";
}

/// Represents the MessageLiteModel model. generated by kimapp_generator
@freezed
sealed class MessageLiteModel
    with _$MessageLiteModel
    implements BaseMessageSchema {
  const MessageLiteModel._();

  /// Constructor for MessageLiteModel.
  ///
  /// This class was generated by the Kimapp generator based on KimappSchema.
  ///
  /// Table Mode: `enabled`
  /// Table Name: `messages`
  ///
  /// Fields:
  /// - MessageId id : JsonKey('id')
  /// - ProfileId senderId : JsonKey('sender_id')
  /// - ProfileId recipientId : JsonKey('recipient_id')
  /// - String content : JsonKey('content')
  /// - bool read : JsonKey('read')
  /// - DateTime createdAt : JsonKey('created_at')
  @TableModel(MessageLiteModel.tableName)
  @JsonSerializable(explicitToJson: true)
  const factory MessageLiteModel({
    @JsonKey(name: MessageLiteModel.idKey) required MessageId id,
    @JsonKey(name: MessageLiteModel.senderIdKey) required ProfileId senderId,
    @JsonKey(name: MessageLiteModel.recipientIdKey)
    required ProfileId recipientId,
    @JsonKey(name: MessageLiteModel.contentKey) required String content,
    @JsonKey(name: MessageLiteModel.readKey) required bool read,
    @JsonKey(name: MessageLiteModel.createdAtKey) required DateTime createdAt,
  }) = _MessageLiteModel;

  /// Creates an instance of MessageLiteModel from a JSON map.
  factory MessageLiteModel.fromJson(Map<String, dynamic> json) =>
      _$MessageLiteModelFromJson(json);

  /// Supabase table configuration for this model.
  static const TableBuilder table = _tableMessageLiteModel;

  /// Table name: `messages`
  static const String tableName = "messages";

  /// Field name for id field with JsonKey('id')
  static const String idKey = "id";

  /// Field name for senderId field with JsonKey('sender_id')
  static const String senderIdKey = "sender_id";

  /// Field name for recipientId field with JsonKey('recipient_id')
  static const String recipientIdKey = "recipient_id";

  /// Field name for content field with JsonKey('content')
  static const String contentKey = "content";

  /// Field name for read field with JsonKey('read')
  static const String readKey = "read";

  /// Field name for createdAt field with JsonKey('created_at')
  static const String createdAtKey = "created_at";
}

/// Represents the MessageCreateParam model. generated by kimapp_generator
@freezed
sealed class MessageCreateParam
    with _$MessageCreateParam
    implements BaseMessageSchema {
  const MessageCreateParam._();

  /// Constructor for MessageCreateParam.
  ///
  /// This class was generated by the Kimapp generator based on KimappSchema.
  ///
  /// Table Mode: `disabled`
  ///
  /// Fields:
  /// - ProfileId senderId : JsonKey('sender_id')
  /// - ProfileId recipientId : JsonKey('recipient_id')
  /// - String content : JsonKey('content')
  /// - int? tradeRequestId : JsonKey('trade_request_id')
  /// - ImageObject? image : JsonKey('file_path')
  @JsonSerializable(explicitToJson: true)
  const factory MessageCreateParam({
    @JsonKey(name: MessageCreateParam.senderIdKey) required ProfileId senderId,
    @JsonKey(name: MessageCreateParam.recipientIdKey)
    required ProfileId recipientId,
    @JsonKey(name: MessageCreateParam.contentKey) required String content,
    @JsonKey(name: MessageCreateParam.tradeRequestIdKey)
    required int? tradeRequestId,
    @JsonKey(name: MessageCreateParam.imageKey) required ImageObject? image,
  }) = _MessageCreateParam;

  /// Creates an instance of MessageCreateParam from a JSON map.
  factory MessageCreateParam.fromJson(Map<String, dynamic> json) =>
      _$MessageCreateParamFromJson(json);

  /// Field name for senderId field with JsonKey('sender_id')
  static const String senderIdKey = "sender_id";

  /// Field name for recipientId field with JsonKey('recipient_id')
  static const String recipientIdKey = "recipient_id";

  /// Field name for content field with JsonKey('content')
  static const String contentKey = "content";

  /// Field name for tradeRequestId field with JsonKey('trade_request_id')
  static const String tradeRequestIdKey = "trade_request_id";

  /// Field name for image field with JsonKey('file_path')
  static const String imageKey = "file_path";
}

/// Represents the MessageUpdateParam model. generated by kimapp_generator
@freezed
sealed class MessageUpdateParam
    with _$MessageUpdateParam
    implements BaseMessageSchema {
  const MessageUpdateParam._();

  /// Constructor for MessageUpdateParam.
  ///
  /// This class was generated by the Kimapp generator based on KimappSchema.
  ///
  /// Table Mode: `disabled`
  ///
  /// Fields:
  /// - bool? read : JsonKey('read')
  @JsonSerializable(explicitToJson: true)
  const factory MessageUpdateParam({
    @JsonKey(name: MessageUpdateParam.readKey) required bool? read,
  }) = _MessageUpdateParam;

  /// Creates an instance of MessageUpdateParam from a JSON map.
  factory MessageUpdateParam.fromJson(Map<String, dynamic> json) =>
      _$MessageUpdateParamFromJson(json);

  /// Field name for read field with JsonKey('read')
  static const String readKey = "read";
}
