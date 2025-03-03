// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_account_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CurrentAccountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ProfileDetailModel profile) $default, {
    required TResult Function() none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(ProfileDetailModel profile)? $default, {
    TResult? Function()? none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ProfileDetailModel profile)? $default, {
    TResult Function()? none,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CurrentAccountStateData value) $default, {
    required TResult Function(_None value) none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CurrentAccountStateData value)? $default, {
    TResult? Function(_None value)? none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CurrentAccountStateData value)? $default, {
    TResult Function(_None value)? none,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentAccountStateCopyWith<$Res> {
  factory $CurrentAccountStateCopyWith(
          CurrentAccountState value, $Res Function(CurrentAccountState) then) =
      _$CurrentAccountStateCopyWithImpl<$Res, CurrentAccountState>;
}

/// @nodoc
class _$CurrentAccountStateCopyWithImpl<$Res, $Val extends CurrentAccountState>
    implements $CurrentAccountStateCopyWith<$Res> {
  _$CurrentAccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CurrentAccountState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NoneImplCopyWith<$Res> {
  factory _$$NoneImplCopyWith(
          _$NoneImpl value, $Res Function(_$NoneImpl) then) =
      __$$NoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoneImplCopyWithImpl<$Res>
    extends _$CurrentAccountStateCopyWithImpl<$Res, _$NoneImpl>
    implements _$$NoneImplCopyWith<$Res> {
  __$$NoneImplCopyWithImpl(_$NoneImpl _value, $Res Function(_$NoneImpl) _then)
      : super(_value, _then);

  /// Create a copy of CurrentAccountState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoneImpl extends _None {
  const _$NoneImpl() : super._();

  @override
  String toString() {
    return 'CurrentAccountState.none()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoneImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ProfileDetailModel profile) $default, {
    required TResult Function() none,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(ProfileDetailModel profile)? $default, {
    TResult? Function()? none,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ProfileDetailModel profile)? $default, {
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CurrentAccountStateData value) $default, {
    required TResult Function(_None value) none,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CurrentAccountStateData value)? $default, {
    TResult? Function(_None value)? none,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CurrentAccountStateData value)? $default, {
    TResult Function(_None value)? none,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class _None extends CurrentAccountState {
  const factory _None() = _$NoneImpl;
  const _None._() : super._();
}

/// @nodoc
abstract class _$$CurrentAccountStateDataImplCopyWith<$Res> {
  factory _$$CurrentAccountStateDataImplCopyWith(
          _$CurrentAccountStateDataImpl value,
          $Res Function(_$CurrentAccountStateDataImpl) then) =
      __$$CurrentAccountStateDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProfileDetailModel profile});

  $ProfileDetailModelCopyWith<$Res> get profile;
}

/// @nodoc
class __$$CurrentAccountStateDataImplCopyWithImpl<$Res>
    extends _$CurrentAccountStateCopyWithImpl<$Res,
        _$CurrentAccountStateDataImpl>
    implements _$$CurrentAccountStateDataImplCopyWith<$Res> {
  __$$CurrentAccountStateDataImplCopyWithImpl(
      _$CurrentAccountStateDataImpl _value,
      $Res Function(_$CurrentAccountStateDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CurrentAccountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_$CurrentAccountStateDataImpl(
      null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileDetailModel,
    ));
  }

  /// Create a copy of CurrentAccountState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileDetailModelCopyWith<$Res> get profile {
    return $ProfileDetailModelCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc

class _$CurrentAccountStateDataImpl extends CurrentAccountStateData {
  const _$CurrentAccountStateDataImpl(this.profile) : super._();

  @override
  final ProfileDetailModel profile;

  @override
  String toString() {
    return 'CurrentAccountState(profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentAccountStateDataImpl &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  /// Create a copy of CurrentAccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentAccountStateDataImplCopyWith<_$CurrentAccountStateDataImpl>
      get copyWith => __$$CurrentAccountStateDataImplCopyWithImpl<
          _$CurrentAccountStateDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ProfileDetailModel profile) $default, {
    required TResult Function() none,
  }) {
    return $default(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(ProfileDetailModel profile)? $default, {
    TResult? Function()? none,
  }) {
    return $default?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ProfileDetailModel profile)? $default, {
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CurrentAccountStateData value) $default, {
    required TResult Function(_None value) none,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CurrentAccountStateData value)? $default, {
    TResult? Function(_None value)? none,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CurrentAccountStateData value)? $default, {
    TResult Function(_None value)? none,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CurrentAccountStateData extends CurrentAccountState {
  const factory CurrentAccountStateData(final ProfileDetailModel profile) =
      _$CurrentAccountStateDataImpl;
  const CurrentAccountStateData._() : super._();

  ProfileDetailModel get profile;

  /// Create a copy of CurrentAccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrentAccountStateDataImplCopyWith<_$CurrentAccountStateDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
