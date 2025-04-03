// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_list_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotificationListParam {
  ProfileId get userId => throw _privateConstructorUsedError;
  int? get relatedTradeId => throw _privateConstructorUsedError;
  NotificationType? get notificationType => throw _privateConstructorUsedError;
  bool? get read => throw _privateConstructorUsedError;

  /// Create a copy of NotificationListParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationListParamCopyWith<NotificationListParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationListParamCopyWith<$Res> {
  factory $NotificationListParamCopyWith(NotificationListParam value,
          $Res Function(NotificationListParam) then) =
      _$NotificationListParamCopyWithImpl<$Res, NotificationListParam>;
  @useResult
  $Res call(
      {ProfileId userId,
      int? relatedTradeId,
      NotificationType? notificationType,
      bool? read});
}

/// @nodoc
class _$NotificationListParamCopyWithImpl<$Res,
        $Val extends NotificationListParam>
    implements $NotificationListParamCopyWith<$Res> {
  _$NotificationListParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationListParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? relatedTradeId = freezed,
    Object? notificationType = freezed,
    Object? read = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      relatedTradeId: freezed == relatedTradeId
          ? _value.relatedTradeId
          : relatedTradeId // ignore: cast_nullable_to_non_nullable
              as int?,
      notificationType: freezed == notificationType
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as NotificationType?,
      read: freezed == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationListParamImplCopyWith<$Res>
    implements $NotificationListParamCopyWith<$Res> {
  factory _$$NotificationListParamImplCopyWith(
          _$NotificationListParamImpl value,
          $Res Function(_$NotificationListParamImpl) then) =
      __$$NotificationListParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProfileId userId,
      int? relatedTradeId,
      NotificationType? notificationType,
      bool? read});
}

/// @nodoc
class __$$NotificationListParamImplCopyWithImpl<$Res>
    extends _$NotificationListParamCopyWithImpl<$Res,
        _$NotificationListParamImpl>
    implements _$$NotificationListParamImplCopyWith<$Res> {
  __$$NotificationListParamImplCopyWithImpl(_$NotificationListParamImpl _value,
      $Res Function(_$NotificationListParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationListParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? relatedTradeId = freezed,
    Object? notificationType = freezed,
    Object? read = freezed,
  }) {
    return _then(_$NotificationListParamImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
      relatedTradeId: freezed == relatedTradeId
          ? _value.relatedTradeId
          : relatedTradeId // ignore: cast_nullable_to_non_nullable
              as int?,
      notificationType: freezed == notificationType
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as NotificationType?,
      read: freezed == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$NotificationListParamImpl implements _NotificationListParam {
  const _$NotificationListParamImpl(
      {required this.userId,
      this.relatedTradeId,
      this.notificationType,
      this.read});

  @override
  final ProfileId userId;
  @override
  final int? relatedTradeId;
  @override
  final NotificationType? notificationType;
  @override
  final bool? read;

  @override
  String toString() {
    return 'NotificationListParam(userId: $userId, relatedTradeId: $relatedTradeId, notificationType: $notificationType, read: $read)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationListParamImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.relatedTradeId, relatedTradeId) ||
                other.relatedTradeId == relatedTradeId) &&
            (identical(other.notificationType, notificationType) ||
                other.notificationType == notificationType) &&
            (identical(other.read, read) || other.read == read));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, relatedTradeId, notificationType, read);

  /// Create a copy of NotificationListParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationListParamImplCopyWith<_$NotificationListParamImpl>
      get copyWith => __$$NotificationListParamImplCopyWithImpl<
          _$NotificationListParamImpl>(this, _$identity);
}

abstract class _NotificationListParam implements NotificationListParam {
  const factory _NotificationListParam(
      {required final ProfileId userId,
      final int? relatedTradeId,
      final NotificationType? notificationType,
      final bool? read}) = _$NotificationListParamImpl;

  @override
  ProfileId get userId;
  @override
  int? get relatedTradeId;
  @override
  NotificationType? get notificationType;
  @override
  bool? get read;

  /// Create a copy of NotificationListParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationListParamImplCopyWith<_$NotificationListParamImpl>
      get copyWith => throw _privateConstructorUsedError;
}
