// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_schema.schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) {
  return _NotificationModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationModel {
  @JsonKey(name: NotificationModel.idKey)
  NotificationId get id => throw _privateConstructorUsedError;
  @JsonKey(name: NotificationModel.userIdKey)
  ProfileId get userId => throw _privateConstructorUsedError;
  @JsonKey(name: NotificationModel.contentKey)
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: NotificationModel.readKey)
  bool get read => throw _privateConstructorUsedError;
  @JsonKey(name: NotificationModel.relatedTradeIdKey)
  int? get relatedTradeId => throw _privateConstructorUsedError;
  @JsonKey(name: NotificationModel.rawTypeKey)
  String get rawType => throw _privateConstructorUsedError;
  @JsonKey(name: NotificationModel.payloadKey)
  Map<String, dynamic> get payload => throw _privateConstructorUsedError;
  @JsonKey(name: NotificationModel.createdAtKey)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "related_trade_id", candidateKey: null)
  @JsonKey(name: NotificationModel.tradeRequestKey)
  TradeRequestLiteModel? get tradeRequest => throw _privateConstructorUsedError;

  /// Serializes this NotificationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationModelCopyWith<NotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationModelCopyWith<$Res> {
  factory $NotificationModelCopyWith(
          NotificationModel value, $Res Function(NotificationModel) then) =
      _$NotificationModelCopyWithImpl<$Res, NotificationModel>;
  @useResult
  $Res call(
      {@JsonKey(name: NotificationModel.idKey) NotificationId id,
      @JsonKey(name: NotificationModel.userIdKey) ProfileId userId,
      @JsonKey(name: NotificationModel.contentKey) String content,
      @JsonKey(name: NotificationModel.readKey) bool read,
      @JsonKey(name: NotificationModel.relatedTradeIdKey) int? relatedTradeId,
      @JsonKey(name: NotificationModel.rawTypeKey) String rawType,
      @JsonKey(name: NotificationModel.payloadKey) Map<String, dynamic> payload,
      @JsonKey(name: NotificationModel.createdAtKey) DateTime createdAt,
      @JoinedColumn(foreignKey: "related_trade_id", candidateKey: null)
      @JsonKey(name: NotificationModel.tradeRequestKey)
      TradeRequestLiteModel? tradeRequest});

  $TradeRequestLiteModelCopyWith<$Res>? get tradeRequest;
}

/// @nodoc
class _$NotificationModelCopyWithImpl<$Res, $Val extends NotificationModel>
    implements $NotificationModelCopyWith<$Res> {
  _$NotificationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? content = null,
    Object? read = null,
    Object? relatedTradeId = freezed,
    Object? rawType = null,
    Object? payload = null,
    Object? createdAt = null,
    Object? tradeRequest = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as NotificationId,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      read: null == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      relatedTradeId: freezed == relatedTradeId
          ? _value.relatedTradeId
          : relatedTradeId // ignore: cast_nullable_to_non_nullable
              as int?,
      rawType: null == rawType
          ? _value.rawType
          : rawType // ignore: cast_nullable_to_non_nullable
              as String,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tradeRequest: freezed == tradeRequest
          ? _value.tradeRequest
          : tradeRequest // ignore: cast_nullable_to_non_nullable
              as TradeRequestLiteModel?,
    ) as $Val);
  }

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TradeRequestLiteModelCopyWith<$Res>? get tradeRequest {
    if (_value.tradeRequest == null) {
      return null;
    }

    return $TradeRequestLiteModelCopyWith<$Res>(_value.tradeRequest!, (value) {
      return _then(_value.copyWith(tradeRequest: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NotificationModelImplCopyWith<$Res>
    implements $NotificationModelCopyWith<$Res> {
  factory _$$NotificationModelImplCopyWith(_$NotificationModelImpl value,
          $Res Function(_$NotificationModelImpl) then) =
      __$$NotificationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: NotificationModel.idKey) NotificationId id,
      @JsonKey(name: NotificationModel.userIdKey) ProfileId userId,
      @JsonKey(name: NotificationModel.contentKey) String content,
      @JsonKey(name: NotificationModel.readKey) bool read,
      @JsonKey(name: NotificationModel.relatedTradeIdKey) int? relatedTradeId,
      @JsonKey(name: NotificationModel.rawTypeKey) String rawType,
      @JsonKey(name: NotificationModel.payloadKey) Map<String, dynamic> payload,
      @JsonKey(name: NotificationModel.createdAtKey) DateTime createdAt,
      @JoinedColumn(foreignKey: "related_trade_id", candidateKey: null)
      @JsonKey(name: NotificationModel.tradeRequestKey)
      TradeRequestLiteModel? tradeRequest});

  @override
  $TradeRequestLiteModelCopyWith<$Res>? get tradeRequest;
}

/// @nodoc
class __$$NotificationModelImplCopyWithImpl<$Res>
    extends _$NotificationModelCopyWithImpl<$Res, _$NotificationModelImpl>
    implements _$$NotificationModelImplCopyWith<$Res> {
  __$$NotificationModelImplCopyWithImpl(_$NotificationModelImpl _value,
      $Res Function(_$NotificationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? content = null,
    Object? read = null,
    Object? relatedTradeId = freezed,
    Object? rawType = null,
    Object? payload = null,
    Object? createdAt = null,
    Object? tradeRequest = freezed,
  }) {
    return _then(_$NotificationModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as NotificationId,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      read: null == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      relatedTradeId: freezed == relatedTradeId
          ? _value.relatedTradeId
          : relatedTradeId // ignore: cast_nullable_to_non_nullable
              as int?,
      rawType: null == rawType
          ? _value.rawType
          : rawType // ignore: cast_nullable_to_non_nullable
              as String,
      payload: null == payload
          ? _value._payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tradeRequest: freezed == tradeRequest
          ? _value.tradeRequest
          : tradeRequest // ignore: cast_nullable_to_non_nullable
              as TradeRequestLiteModel?,
    ));
  }
}

/// @nodoc

@TableModel(NotificationModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$NotificationModelImpl extends _NotificationModel {
  const _$NotificationModelImpl(
      {@JsonKey(name: NotificationModel.idKey) required this.id,
      @JsonKey(name: NotificationModel.userIdKey) required this.userId,
      @JsonKey(name: NotificationModel.contentKey) required this.content,
      @JsonKey(name: NotificationModel.readKey) required this.read,
      @JsonKey(name: NotificationModel.relatedTradeIdKey)
      required this.relatedTradeId,
      @JsonKey(name: NotificationModel.rawTypeKey) required this.rawType,
      @JsonKey(name: NotificationModel.payloadKey)
      required final Map<String, dynamic> payload,
      @JsonKey(name: NotificationModel.createdAtKey) required this.createdAt,
      @JoinedColumn(foreignKey: "related_trade_id", candidateKey: null)
      @JsonKey(name: NotificationModel.tradeRequestKey)
      required this.tradeRequest})
      : _payload = payload,
        super._();

  factory _$NotificationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationModelImplFromJson(json);

  @override
  @JsonKey(name: NotificationModel.idKey)
  final NotificationId id;
  @override
  @JsonKey(name: NotificationModel.userIdKey)
  final ProfileId userId;
  @override
  @JsonKey(name: NotificationModel.contentKey)
  final String content;
  @override
  @JsonKey(name: NotificationModel.readKey)
  final bool read;
  @override
  @JsonKey(name: NotificationModel.relatedTradeIdKey)
  final int? relatedTradeId;
  @override
  @JsonKey(name: NotificationModel.rawTypeKey)
  final String rawType;
  final Map<String, dynamic> _payload;
  @override
  @JsonKey(name: NotificationModel.payloadKey)
  Map<String, dynamic> get payload {
    if (_payload is EqualUnmodifiableMapView) return _payload;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_payload);
  }

  @override
  @JsonKey(name: NotificationModel.createdAtKey)
  final DateTime createdAt;
  @override
  @JoinedColumn(foreignKey: "related_trade_id", candidateKey: null)
  @JsonKey(name: NotificationModel.tradeRequestKey)
  final TradeRequestLiteModel? tradeRequest;

  @override
  String toString() {
    return 'NotificationModel(id: $id, userId: $userId, content: $content, read: $read, relatedTradeId: $relatedTradeId, rawType: $rawType, payload: $payload, createdAt: $createdAt, tradeRequest: $tradeRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.read, read) || other.read == read) &&
            (identical(other.relatedTradeId, relatedTradeId) ||
                other.relatedTradeId == relatedTradeId) &&
            (identical(other.rawType, rawType) || other.rawType == rawType) &&
            const DeepCollectionEquality().equals(other._payload, _payload) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.tradeRequest, tradeRequest) ||
                other.tradeRequest == tradeRequest));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      content,
      read,
      relatedTradeId,
      rawType,
      const DeepCollectionEquality().hash(_payload),
      createdAt,
      tradeRequest);

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationModelImplCopyWith<_$NotificationModelImpl> get copyWith =>
      __$$NotificationModelImplCopyWithImpl<_$NotificationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationModelImplToJson(
      this,
    );
  }
}

abstract class _NotificationModel extends NotificationModel {
  const factory _NotificationModel(
      {@JsonKey(name: NotificationModel.idKey) required final NotificationId id,
      @JsonKey(name: NotificationModel.userIdKey)
      required final ProfileId userId,
      @JsonKey(name: NotificationModel.contentKey)
      required final String content,
      @JsonKey(name: NotificationModel.readKey) required final bool read,
      @JsonKey(name: NotificationModel.relatedTradeIdKey)
      required final int? relatedTradeId,
      @JsonKey(name: NotificationModel.rawTypeKey)
      required final String rawType,
      @JsonKey(name: NotificationModel.payloadKey)
      required final Map<String, dynamic> payload,
      @JsonKey(name: NotificationModel.createdAtKey)
      required final DateTime createdAt,
      @JoinedColumn(foreignKey: "related_trade_id", candidateKey: null)
      @JsonKey(name: NotificationModel.tradeRequestKey)
      required final TradeRequestLiteModel?
          tradeRequest}) = _$NotificationModelImpl;
  const _NotificationModel._() : super._();

  factory _NotificationModel.fromJson(Map<String, dynamic> json) =
      _$NotificationModelImpl.fromJson;

  @override
  @JsonKey(name: NotificationModel.idKey)
  NotificationId get id;
  @override
  @JsonKey(name: NotificationModel.userIdKey)
  ProfileId get userId;
  @override
  @JsonKey(name: NotificationModel.contentKey)
  String get content;
  @override
  @JsonKey(name: NotificationModel.readKey)
  bool get read;
  @override
  @JsonKey(name: NotificationModel.relatedTradeIdKey)
  int? get relatedTradeId;
  @override
  @JsonKey(name: NotificationModel.rawTypeKey)
  String get rawType;
  @override
  @JsonKey(name: NotificationModel.payloadKey)
  Map<String, dynamic> get payload;
  @override
  @JsonKey(name: NotificationModel.createdAtKey)
  DateTime get createdAt;
  @override
  @JoinedColumn(foreignKey: "related_trade_id", candidateKey: null)
  @JsonKey(name: NotificationModel.tradeRequestKey)
  TradeRequestLiteModel? get tradeRequest;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationModelImplCopyWith<_$NotificationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
