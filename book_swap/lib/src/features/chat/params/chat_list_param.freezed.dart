// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_list_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatListParam {
  String? get search => throw _privateConstructorUsedError;

  /// Create a copy of ChatListParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatListParamCopyWith<ChatListParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatListParamCopyWith<$Res> {
  factory $ChatListParamCopyWith(
          ChatListParam value, $Res Function(ChatListParam) then) =
      _$ChatListParamCopyWithImpl<$Res, ChatListParam>;
  @useResult
  $Res call({String? search});
}

/// @nodoc
class _$ChatListParamCopyWithImpl<$Res, $Val extends ChatListParam>
    implements $ChatListParamCopyWith<$Res> {
  _$ChatListParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatListParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = freezed,
  }) {
    return _then(_value.copyWith(
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatListParamImplCopyWith<$Res>
    implements $ChatListParamCopyWith<$Res> {
  factory _$$ChatListParamImplCopyWith(
          _$ChatListParamImpl value, $Res Function(_$ChatListParamImpl) then) =
      __$$ChatListParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? search});
}

/// @nodoc
class __$$ChatListParamImplCopyWithImpl<$Res>
    extends _$ChatListParamCopyWithImpl<$Res, _$ChatListParamImpl>
    implements _$$ChatListParamImplCopyWith<$Res> {
  __$$ChatListParamImplCopyWithImpl(
      _$ChatListParamImpl _value, $Res Function(_$ChatListParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatListParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = freezed,
  }) {
    return _then(_$ChatListParamImpl(
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChatListParamImpl extends _ChatListParam {
  const _$ChatListParamImpl({this.search}) : super._();

  @override
  final String? search;

  @override
  String toString() {
    return 'ChatListParam(search: $search)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatListParamImpl &&
            (identical(other.search, search) || other.search == search));
  }

  @override
  int get hashCode => Object.hash(runtimeType, search);

  /// Create a copy of ChatListParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatListParamImplCopyWith<_$ChatListParamImpl> get copyWith =>
      __$$ChatListParamImplCopyWithImpl<_$ChatListParamImpl>(this, _$identity);
}

abstract class _ChatListParam extends ChatListParam {
  const factory _ChatListParam({final String? search}) = _$ChatListParamImpl;
  const _ChatListParam._() : super._();

  @override
  String? get search;

  /// Create a copy of ChatListParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatListParamImplCopyWith<_$ChatListParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
