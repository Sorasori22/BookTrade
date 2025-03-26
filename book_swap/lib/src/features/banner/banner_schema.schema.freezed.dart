// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner_schema.schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BannerModel _$BannerModelFromJson(Map<String, dynamic> json) {
  return _BannerModel.fromJson(json);
}

/// @nodoc
mixin _$BannerModel {
  @JsonKey(name: BannerModel.idKey)
  BannerId get id => throw _privateConstructorUsedError;
  @JsonKey(name: BannerModel.noteKey)
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: BannerModel.imagePathKey)
  ImageObject get imagePath => throw _privateConstructorUsedError;
  @JsonKey(name: BannerModel.isActiveKey)
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: BannerModel.skippableDurationSecondsKey)
  int get skippableDurationSeconds => throw _privateConstructorUsedError;

  /// Serializes this BannerModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BannerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BannerModelCopyWith<BannerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerModelCopyWith<$Res> {
  factory $BannerModelCopyWith(
          BannerModel value, $Res Function(BannerModel) then) =
      _$BannerModelCopyWithImpl<$Res, BannerModel>;
  @useResult
  $Res call(
      {@JsonKey(name: BannerModel.idKey) BannerId id,
      @JsonKey(name: BannerModel.noteKey) String? note,
      @JsonKey(name: BannerModel.imagePathKey) ImageObject imagePath,
      @JsonKey(name: BannerModel.isActiveKey) bool isActive,
      @JsonKey(name: BannerModel.skippableDurationSecondsKey)
      int skippableDurationSeconds});
}

/// @nodoc
class _$BannerModelCopyWithImpl<$Res, $Val extends BannerModel>
    implements $BannerModelCopyWith<$Res> {
  _$BannerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BannerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? note = freezed,
    Object? imagePath = null,
    Object? isActive = null,
    Object? skippableDurationSeconds = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as BannerId,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as ImageObject,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      skippableDurationSeconds: null == skippableDurationSeconds
          ? _value.skippableDurationSeconds
          : skippableDurationSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BannerModelImplCopyWith<$Res>
    implements $BannerModelCopyWith<$Res> {
  factory _$$BannerModelImplCopyWith(
          _$BannerModelImpl value, $Res Function(_$BannerModelImpl) then) =
      __$$BannerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: BannerModel.idKey) BannerId id,
      @JsonKey(name: BannerModel.noteKey) String? note,
      @JsonKey(name: BannerModel.imagePathKey) ImageObject imagePath,
      @JsonKey(name: BannerModel.isActiveKey) bool isActive,
      @JsonKey(name: BannerModel.skippableDurationSecondsKey)
      int skippableDurationSeconds});
}

/// @nodoc
class __$$BannerModelImplCopyWithImpl<$Res>
    extends _$BannerModelCopyWithImpl<$Res, _$BannerModelImpl>
    implements _$$BannerModelImplCopyWith<$Res> {
  __$$BannerModelImplCopyWithImpl(
      _$BannerModelImpl _value, $Res Function(_$BannerModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BannerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? note = freezed,
    Object? imagePath = null,
    Object? isActive = null,
    Object? skippableDurationSeconds = null,
  }) {
    return _then(_$BannerModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as BannerId,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as ImageObject,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      skippableDurationSeconds: null == skippableDurationSeconds
          ? _value.skippableDurationSeconds
          : skippableDurationSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@TableModel(BannerModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$BannerModelImpl extends _BannerModel {
  const _$BannerModelImpl(
      {@JsonKey(name: BannerModel.idKey) required this.id,
      @JsonKey(name: BannerModel.noteKey) required this.note,
      @JsonKey(name: BannerModel.imagePathKey) required this.imagePath,
      @JsonKey(name: BannerModel.isActiveKey) required this.isActive,
      @JsonKey(name: BannerModel.skippableDurationSecondsKey)
      required this.skippableDurationSeconds})
      : super._();

  factory _$BannerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannerModelImplFromJson(json);

  @override
  @JsonKey(name: BannerModel.idKey)
  final BannerId id;
  @override
  @JsonKey(name: BannerModel.noteKey)
  final String? note;
  @override
  @JsonKey(name: BannerModel.imagePathKey)
  final ImageObject imagePath;
  @override
  @JsonKey(name: BannerModel.isActiveKey)
  final bool isActive;
  @override
  @JsonKey(name: BannerModel.skippableDurationSecondsKey)
  final int skippableDurationSeconds;

  @override
  String toString() {
    return 'BannerModel(id: $id, note: $note, imagePath: $imagePath, isActive: $isActive, skippableDurationSeconds: $skippableDurationSeconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(
                    other.skippableDurationSeconds, skippableDurationSeconds) ||
                other.skippableDurationSeconds == skippableDurationSeconds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, note, imagePath, isActive, skippableDurationSeconds);

  /// Create a copy of BannerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerModelImplCopyWith<_$BannerModelImpl> get copyWith =>
      __$$BannerModelImplCopyWithImpl<_$BannerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BannerModelImplToJson(
      this,
    );
  }
}

abstract class _BannerModel extends BannerModel {
  const factory _BannerModel(
      {@JsonKey(name: BannerModel.idKey) required final BannerId id,
      @JsonKey(name: BannerModel.noteKey) required final String? note,
      @JsonKey(name: BannerModel.imagePathKey)
      required final ImageObject imagePath,
      @JsonKey(name: BannerModel.isActiveKey) required final bool isActive,
      @JsonKey(name: BannerModel.skippableDurationSecondsKey)
      required final int skippableDurationSeconds}) = _$BannerModelImpl;
  const _BannerModel._() : super._();

  factory _BannerModel.fromJson(Map<String, dynamic> json) =
      _$BannerModelImpl.fromJson;

  @override
  @JsonKey(name: BannerModel.idKey)
  BannerId get id;
  @override
  @JsonKey(name: BannerModel.noteKey)
  String? get note;
  @override
  @JsonKey(name: BannerModel.imagePathKey)
  ImageObject get imagePath;
  @override
  @JsonKey(name: BannerModel.isActiveKey)
  bool get isActive;
  @override
  @JsonKey(name: BannerModel.skippableDurationSecondsKey)
  int get skippableDurationSeconds;

  /// Create a copy of BannerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BannerModelImplCopyWith<_$BannerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BannerCreateParam _$BannerCreateParamFromJson(Map<String, dynamic> json) {
  return _BannerCreateParam.fromJson(json);
}

/// @nodoc
mixin _$BannerCreateParam {
  @JsonKey(name: BannerCreateParam.noteKey)
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: BannerCreateParam.imagePathKey)
  ImageObject get imagePath => throw _privateConstructorUsedError;
  @JsonKey(name: BannerCreateParam.isActiveKey)
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: BannerCreateParam.skippableDurationSecondsKey)
  int get skippableDurationSeconds => throw _privateConstructorUsedError;

  /// Serializes this BannerCreateParam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BannerCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BannerCreateParamCopyWith<BannerCreateParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerCreateParamCopyWith<$Res> {
  factory $BannerCreateParamCopyWith(
          BannerCreateParam value, $Res Function(BannerCreateParam) then) =
      _$BannerCreateParamCopyWithImpl<$Res, BannerCreateParam>;
  @useResult
  $Res call(
      {@JsonKey(name: BannerCreateParam.noteKey) String? note,
      @JsonKey(name: BannerCreateParam.imagePathKey) ImageObject imagePath,
      @JsonKey(name: BannerCreateParam.isActiveKey) bool isActive,
      @JsonKey(name: BannerCreateParam.skippableDurationSecondsKey)
      int skippableDurationSeconds});
}

/// @nodoc
class _$BannerCreateParamCopyWithImpl<$Res, $Val extends BannerCreateParam>
    implements $BannerCreateParamCopyWith<$Res> {
  _$BannerCreateParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BannerCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = freezed,
    Object? imagePath = null,
    Object? isActive = null,
    Object? skippableDurationSeconds = null,
  }) {
    return _then(_value.copyWith(
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as ImageObject,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      skippableDurationSeconds: null == skippableDurationSeconds
          ? _value.skippableDurationSeconds
          : skippableDurationSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BannerCreateParamImplCopyWith<$Res>
    implements $BannerCreateParamCopyWith<$Res> {
  factory _$$BannerCreateParamImplCopyWith(_$BannerCreateParamImpl value,
          $Res Function(_$BannerCreateParamImpl) then) =
      __$$BannerCreateParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: BannerCreateParam.noteKey) String? note,
      @JsonKey(name: BannerCreateParam.imagePathKey) ImageObject imagePath,
      @JsonKey(name: BannerCreateParam.isActiveKey) bool isActive,
      @JsonKey(name: BannerCreateParam.skippableDurationSecondsKey)
      int skippableDurationSeconds});
}

/// @nodoc
class __$$BannerCreateParamImplCopyWithImpl<$Res>
    extends _$BannerCreateParamCopyWithImpl<$Res, _$BannerCreateParamImpl>
    implements _$$BannerCreateParamImplCopyWith<$Res> {
  __$$BannerCreateParamImplCopyWithImpl(_$BannerCreateParamImpl _value,
      $Res Function(_$BannerCreateParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of BannerCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = freezed,
    Object? imagePath = null,
    Object? isActive = null,
    Object? skippableDurationSeconds = null,
  }) {
    return _then(_$BannerCreateParamImpl(
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as ImageObject,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      skippableDurationSeconds: null == skippableDurationSeconds
          ? _value.skippableDurationSeconds
          : skippableDurationSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$BannerCreateParamImpl extends _BannerCreateParam {
  const _$BannerCreateParamImpl(
      {@JsonKey(name: BannerCreateParam.noteKey) required this.note,
      @JsonKey(name: BannerCreateParam.imagePathKey) required this.imagePath,
      @JsonKey(name: BannerCreateParam.isActiveKey) required this.isActive,
      @JsonKey(name: BannerCreateParam.skippableDurationSecondsKey)
      required this.skippableDurationSeconds})
      : super._();

  factory _$BannerCreateParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannerCreateParamImplFromJson(json);

  @override
  @JsonKey(name: BannerCreateParam.noteKey)
  final String? note;
  @override
  @JsonKey(name: BannerCreateParam.imagePathKey)
  final ImageObject imagePath;
  @override
  @JsonKey(name: BannerCreateParam.isActiveKey)
  final bool isActive;
  @override
  @JsonKey(name: BannerCreateParam.skippableDurationSecondsKey)
  final int skippableDurationSeconds;

  @override
  String toString() {
    return 'BannerCreateParam(note: $note, imagePath: $imagePath, isActive: $isActive, skippableDurationSeconds: $skippableDurationSeconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerCreateParamImpl &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(
                    other.skippableDurationSeconds, skippableDurationSeconds) ||
                other.skippableDurationSeconds == skippableDurationSeconds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, note, imagePath, isActive, skippableDurationSeconds);

  /// Create a copy of BannerCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerCreateParamImplCopyWith<_$BannerCreateParamImpl> get copyWith =>
      __$$BannerCreateParamImplCopyWithImpl<_$BannerCreateParamImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BannerCreateParamImplToJson(
      this,
    );
  }
}

abstract class _BannerCreateParam extends BannerCreateParam {
  const factory _BannerCreateParam(
      {@JsonKey(name: BannerCreateParam.noteKey) required final String? note,
      @JsonKey(name: BannerCreateParam.imagePathKey)
      required final ImageObject imagePath,
      @JsonKey(name: BannerCreateParam.isActiveKey)
      required final bool isActive,
      @JsonKey(name: BannerCreateParam.skippableDurationSecondsKey)
      required final int skippableDurationSeconds}) = _$BannerCreateParamImpl;
  const _BannerCreateParam._() : super._();

  factory _BannerCreateParam.fromJson(Map<String, dynamic> json) =
      _$BannerCreateParamImpl.fromJson;

  @override
  @JsonKey(name: BannerCreateParam.noteKey)
  String? get note;
  @override
  @JsonKey(name: BannerCreateParam.imagePathKey)
  ImageObject get imagePath;
  @override
  @JsonKey(name: BannerCreateParam.isActiveKey)
  bool get isActive;
  @override
  @JsonKey(name: BannerCreateParam.skippableDurationSecondsKey)
  int get skippableDurationSeconds;

  /// Create a copy of BannerCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BannerCreateParamImplCopyWith<_$BannerCreateParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
