// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_list_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MessageListParam {
  ProfileId get participantId => throw _privateConstructorUsedError;

  /// Create a copy of MessageListParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageListParamCopyWith<MessageListParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageListParamCopyWith<$Res> {
  factory $MessageListParamCopyWith(
          MessageListParam value, $Res Function(MessageListParam) then) =
      _$MessageListParamCopyWithImpl<$Res, MessageListParam>;
  @useResult
  $Res call({ProfileId participantId});
}

/// @nodoc
class _$MessageListParamCopyWithImpl<$Res, $Val extends MessageListParam>
    implements $MessageListParamCopyWith<$Res> {
  _$MessageListParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageListParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? participantId = null,
  }) {
    return _then(_value.copyWith(
      participantId: null == participantId
          ? _value.participantId
          : participantId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageListParamImplCopyWith<$Res>
    implements $MessageListParamCopyWith<$Res> {
  factory _$$MessageListParamImplCopyWith(_$MessageListParamImpl value,
          $Res Function(_$MessageListParamImpl) then) =
      __$$MessageListParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProfileId participantId});
}

/// @nodoc
class __$$MessageListParamImplCopyWithImpl<$Res>
    extends _$MessageListParamCopyWithImpl<$Res, _$MessageListParamImpl>
    implements _$$MessageListParamImplCopyWith<$Res> {
  __$$MessageListParamImplCopyWithImpl(_$MessageListParamImpl _value,
      $Res Function(_$MessageListParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageListParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? participantId = null,
  }) {
    return _then(_$MessageListParamImpl(
      participantId: null == participantId
          ? _value.participantId
          : participantId // ignore: cast_nullable_to_non_nullable
              as ProfileId,
    ));
  }
}

/// @nodoc

class _$MessageListParamImpl implements _MessageListParam {
  const _$MessageListParamImpl({required this.participantId});

  @override
  final ProfileId participantId;

  @override
  String toString() {
    return 'MessageListParam(participantId: $participantId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageListParamImpl &&
            (identical(other.participantId, participantId) ||
                other.participantId == participantId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, participantId);

  /// Create a copy of MessageListParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageListParamImplCopyWith<_$MessageListParamImpl> get copyWith =>
      __$$MessageListParamImplCopyWithImpl<_$MessageListParamImpl>(
          this, _$identity);
}

abstract class _MessageListParam implements MessageListParam {
  const factory _MessageListParam({required final ProfileId participantId}) =
      _$MessageListParamImpl;

  @override
  ProfileId get participantId;

  /// Create a copy of MessageListParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageListParamImplCopyWith<_$MessageListParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
