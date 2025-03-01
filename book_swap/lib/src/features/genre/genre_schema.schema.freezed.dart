// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'genre_schema.schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GenreModel _$GenreModelFromJson(Map<String, dynamic> json) {
  return _GenreModel.fromJson(json);
}

/// @nodoc
mixin _$GenreModel {
  @JsonKey(name: GenreModel.idKey)
  GenreId get id => throw _privateConstructorUsedError;
  @JsonKey(name: GenreModel.nameKey)
  String get name => throw _privateConstructorUsedError;

  /// Serializes this GenreModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GenreModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenreModelCopyWith<GenreModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreModelCopyWith<$Res> {
  factory $GenreModelCopyWith(
          GenreModel value, $Res Function(GenreModel) then) =
      _$GenreModelCopyWithImpl<$Res, GenreModel>;
  @useResult
  $Res call(
      {@JsonKey(name: GenreModel.idKey) GenreId id,
      @JsonKey(name: GenreModel.nameKey) String name});
}

/// @nodoc
class _$GenreModelCopyWithImpl<$Res, $Val extends GenreModel>
    implements $GenreModelCopyWith<$Res> {
  _$GenreModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenreModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as GenreId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenreModelImplCopyWith<$Res>
    implements $GenreModelCopyWith<$Res> {
  factory _$$GenreModelImplCopyWith(
          _$GenreModelImpl value, $Res Function(_$GenreModelImpl) then) =
      __$$GenreModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: GenreModel.idKey) GenreId id,
      @JsonKey(name: GenreModel.nameKey) String name});
}

/// @nodoc
class __$$GenreModelImplCopyWithImpl<$Res>
    extends _$GenreModelCopyWithImpl<$Res, _$GenreModelImpl>
    implements _$$GenreModelImplCopyWith<$Res> {
  __$$GenreModelImplCopyWithImpl(
      _$GenreModelImpl _value, $Res Function(_$GenreModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenreModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$GenreModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as GenreId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@TableModel(GenreModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$GenreModelImpl extends _GenreModel {
  const _$GenreModelImpl(
      {@JsonKey(name: GenreModel.idKey) required this.id,
      @JsonKey(name: GenreModel.nameKey) required this.name})
      : super._();

  factory _$GenreModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenreModelImplFromJson(json);

  @override
  @JsonKey(name: GenreModel.idKey)
  final GenreId id;
  @override
  @JsonKey(name: GenreModel.nameKey)
  final String name;

  @override
  String toString() {
    return 'GenreModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenreModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of GenreModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenreModelImplCopyWith<_$GenreModelImpl> get copyWith =>
      __$$GenreModelImplCopyWithImpl<_$GenreModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenreModelImplToJson(
      this,
    );
  }
}

abstract class _GenreModel extends GenreModel {
  const factory _GenreModel(
          {@JsonKey(name: GenreModel.idKey) required final GenreId id,
          @JsonKey(name: GenreModel.nameKey) required final String name}) =
      _$GenreModelImpl;
  const _GenreModel._() : super._();

  factory _GenreModel.fromJson(Map<String, dynamic> json) =
      _$GenreModelImpl.fromJson;

  @override
  @JsonKey(name: GenreModel.idKey)
  GenreId get id;
  @override
  @JsonKey(name: GenreModel.nameKey)
  String get name;

  /// Create a copy of GenreModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenreModelImplCopyWith<_$GenreModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GenreLiteModel _$GenreLiteModelFromJson(Map<String, dynamic> json) {
  return _GenreLiteModel.fromJson(json);
}

/// @nodoc
mixin _$GenreLiteModel {
  @JsonKey(name: GenreLiteModel.idKey)
  GenreId get id => throw _privateConstructorUsedError;
  @JsonKey(name: GenreLiteModel.nameKey)
  String get name => throw _privateConstructorUsedError;

  /// Serializes this GenreLiteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GenreLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenreLiteModelCopyWith<GenreLiteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreLiteModelCopyWith<$Res> {
  factory $GenreLiteModelCopyWith(
          GenreLiteModel value, $Res Function(GenreLiteModel) then) =
      _$GenreLiteModelCopyWithImpl<$Res, GenreLiteModel>;
  @useResult
  $Res call(
      {@JsonKey(name: GenreLiteModel.idKey) GenreId id,
      @JsonKey(name: GenreLiteModel.nameKey) String name});
}

/// @nodoc
class _$GenreLiteModelCopyWithImpl<$Res, $Val extends GenreLiteModel>
    implements $GenreLiteModelCopyWith<$Res> {
  _$GenreLiteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenreLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as GenreId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenreLiteModelImplCopyWith<$Res>
    implements $GenreLiteModelCopyWith<$Res> {
  factory _$$GenreLiteModelImplCopyWith(_$GenreLiteModelImpl value,
          $Res Function(_$GenreLiteModelImpl) then) =
      __$$GenreLiteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: GenreLiteModel.idKey) GenreId id,
      @JsonKey(name: GenreLiteModel.nameKey) String name});
}

/// @nodoc
class __$$GenreLiteModelImplCopyWithImpl<$Res>
    extends _$GenreLiteModelCopyWithImpl<$Res, _$GenreLiteModelImpl>
    implements _$$GenreLiteModelImplCopyWith<$Res> {
  __$$GenreLiteModelImplCopyWithImpl(
      _$GenreLiteModelImpl _value, $Res Function(_$GenreLiteModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenreLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$GenreLiteModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as GenreId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@TableModel(GenreLiteModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$GenreLiteModelImpl extends _GenreLiteModel {
  const _$GenreLiteModelImpl(
      {@JsonKey(name: GenreLiteModel.idKey) required this.id,
      @JsonKey(name: GenreLiteModel.nameKey) required this.name})
      : super._();

  factory _$GenreLiteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenreLiteModelImplFromJson(json);

  @override
  @JsonKey(name: GenreLiteModel.idKey)
  final GenreId id;
  @override
  @JsonKey(name: GenreLiteModel.nameKey)
  final String name;

  @override
  String toString() {
    return 'GenreLiteModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenreLiteModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of GenreLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenreLiteModelImplCopyWith<_$GenreLiteModelImpl> get copyWith =>
      __$$GenreLiteModelImplCopyWithImpl<_$GenreLiteModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenreLiteModelImplToJson(
      this,
    );
  }
}

abstract class _GenreLiteModel extends GenreLiteModel {
  const factory _GenreLiteModel(
          {@JsonKey(name: GenreLiteModel.idKey) required final GenreId id,
          @JsonKey(name: GenreLiteModel.nameKey) required final String name}) =
      _$GenreLiteModelImpl;
  const _GenreLiteModel._() : super._();

  factory _GenreLiteModel.fromJson(Map<String, dynamic> json) =
      _$GenreLiteModelImpl.fromJson;

  @override
  @JsonKey(name: GenreLiteModel.idKey)
  GenreId get id;
  @override
  @JsonKey(name: GenreLiteModel.nameKey)
  String get name;

  /// Create a copy of GenreLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenreLiteModelImplCopyWith<_$GenreLiteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GenreDetailModel _$GenreDetailModelFromJson(Map<String, dynamic> json) {
  return _GenreDetailModel.fromJson(json);
}

/// @nodoc
mixin _$GenreDetailModel {
  @JsonKey(name: GenreDetailModel.idKey)
  GenreId get id => throw _privateConstructorUsedError;
  @JsonKey(name: GenreDetailModel.nameKey)
  String get name => throw _privateConstructorUsedError;

  /// Serializes this GenreDetailModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GenreDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenreDetailModelCopyWith<GenreDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreDetailModelCopyWith<$Res> {
  factory $GenreDetailModelCopyWith(
          GenreDetailModel value, $Res Function(GenreDetailModel) then) =
      _$GenreDetailModelCopyWithImpl<$Res, GenreDetailModel>;
  @useResult
  $Res call(
      {@JsonKey(name: GenreDetailModel.idKey) GenreId id,
      @JsonKey(name: GenreDetailModel.nameKey) String name});
}

/// @nodoc
class _$GenreDetailModelCopyWithImpl<$Res, $Val extends GenreDetailModel>
    implements $GenreDetailModelCopyWith<$Res> {
  _$GenreDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenreDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as GenreId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenreDetailModelImplCopyWith<$Res>
    implements $GenreDetailModelCopyWith<$Res> {
  factory _$$GenreDetailModelImplCopyWith(_$GenreDetailModelImpl value,
          $Res Function(_$GenreDetailModelImpl) then) =
      __$$GenreDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: GenreDetailModel.idKey) GenreId id,
      @JsonKey(name: GenreDetailModel.nameKey) String name});
}

/// @nodoc
class __$$GenreDetailModelImplCopyWithImpl<$Res>
    extends _$GenreDetailModelCopyWithImpl<$Res, _$GenreDetailModelImpl>
    implements _$$GenreDetailModelImplCopyWith<$Res> {
  __$$GenreDetailModelImplCopyWithImpl(_$GenreDetailModelImpl _value,
      $Res Function(_$GenreDetailModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenreDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$GenreDetailModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as GenreId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@TableModel(GenreDetailModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$GenreDetailModelImpl extends _GenreDetailModel {
  const _$GenreDetailModelImpl(
      {@JsonKey(name: GenreDetailModel.idKey) required this.id,
      @JsonKey(name: GenreDetailModel.nameKey) required this.name})
      : super._();

  factory _$GenreDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenreDetailModelImplFromJson(json);

  @override
  @JsonKey(name: GenreDetailModel.idKey)
  final GenreId id;
  @override
  @JsonKey(name: GenreDetailModel.nameKey)
  final String name;

  @override
  String toString() {
    return 'GenreDetailModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenreDetailModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of GenreDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenreDetailModelImplCopyWith<_$GenreDetailModelImpl> get copyWith =>
      __$$GenreDetailModelImplCopyWithImpl<_$GenreDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenreDetailModelImplToJson(
      this,
    );
  }
}

abstract class _GenreDetailModel extends GenreDetailModel {
  const factory _GenreDetailModel(
      {@JsonKey(name: GenreDetailModel.idKey) required final GenreId id,
      @JsonKey(name: GenreDetailModel.nameKey)
      required final String name}) = _$GenreDetailModelImpl;
  const _GenreDetailModel._() : super._();

  factory _GenreDetailModel.fromJson(Map<String, dynamic> json) =
      _$GenreDetailModelImpl.fromJson;

  @override
  @JsonKey(name: GenreDetailModel.idKey)
  GenreId get id;
  @override
  @JsonKey(name: GenreDetailModel.nameKey)
  String get name;

  /// Create a copy of GenreDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenreDetailModelImplCopyWith<_$GenreDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GenreCreateParam _$GenreCreateParamFromJson(Map<String, dynamic> json) {
  return _GenreCreateParam.fromJson(json);
}

/// @nodoc
mixin _$GenreCreateParam {
  @JsonKey(name: GenreCreateParam.nameKey)
  String get name => throw _privateConstructorUsedError;

  /// Serializes this GenreCreateParam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GenreCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenreCreateParamCopyWith<GenreCreateParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreCreateParamCopyWith<$Res> {
  factory $GenreCreateParamCopyWith(
          GenreCreateParam value, $Res Function(GenreCreateParam) then) =
      _$GenreCreateParamCopyWithImpl<$Res, GenreCreateParam>;
  @useResult
  $Res call({@JsonKey(name: GenreCreateParam.nameKey) String name});
}

/// @nodoc
class _$GenreCreateParamCopyWithImpl<$Res, $Val extends GenreCreateParam>
    implements $GenreCreateParamCopyWith<$Res> {
  _$GenreCreateParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenreCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenreCreateParamImplCopyWith<$Res>
    implements $GenreCreateParamCopyWith<$Res> {
  factory _$$GenreCreateParamImplCopyWith(_$GenreCreateParamImpl value,
          $Res Function(_$GenreCreateParamImpl) then) =
      __$$GenreCreateParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: GenreCreateParam.nameKey) String name});
}

/// @nodoc
class __$$GenreCreateParamImplCopyWithImpl<$Res>
    extends _$GenreCreateParamCopyWithImpl<$Res, _$GenreCreateParamImpl>
    implements _$$GenreCreateParamImplCopyWith<$Res> {
  __$$GenreCreateParamImplCopyWithImpl(_$GenreCreateParamImpl _value,
      $Res Function(_$GenreCreateParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenreCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$GenreCreateParamImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$GenreCreateParamImpl extends _GenreCreateParam {
  const _$GenreCreateParamImpl(
      {@JsonKey(name: GenreCreateParam.nameKey) required this.name})
      : super._();

  factory _$GenreCreateParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenreCreateParamImplFromJson(json);

  @override
  @JsonKey(name: GenreCreateParam.nameKey)
  final String name;

  @override
  String toString() {
    return 'GenreCreateParam(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenreCreateParamImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of GenreCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenreCreateParamImplCopyWith<_$GenreCreateParamImpl> get copyWith =>
      __$$GenreCreateParamImplCopyWithImpl<_$GenreCreateParamImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenreCreateParamImplToJson(
      this,
    );
  }
}

abstract class _GenreCreateParam extends GenreCreateParam {
  const factory _GenreCreateParam(
      {@JsonKey(name: GenreCreateParam.nameKey)
      required final String name}) = _$GenreCreateParamImpl;
  const _GenreCreateParam._() : super._();

  factory _GenreCreateParam.fromJson(Map<String, dynamic> json) =
      _$GenreCreateParamImpl.fromJson;

  @override
  @JsonKey(name: GenreCreateParam.nameKey)
  String get name;

  /// Create a copy of GenreCreateParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenreCreateParamImplCopyWith<_$GenreCreateParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GenreUpdateParam _$GenreUpdateParamFromJson(Map<String, dynamic> json) {
  return _GenreUpdateParam.fromJson(json);
}

/// @nodoc
mixin _$GenreUpdateParam {
  @JsonKey(name: GenreUpdateParam.nameKey)
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this GenreUpdateParam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GenreUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenreUpdateParamCopyWith<GenreUpdateParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreUpdateParamCopyWith<$Res> {
  factory $GenreUpdateParamCopyWith(
          GenreUpdateParam value, $Res Function(GenreUpdateParam) then) =
      _$GenreUpdateParamCopyWithImpl<$Res, GenreUpdateParam>;
  @useResult
  $Res call({@JsonKey(name: GenreUpdateParam.nameKey) String? name});
}

/// @nodoc
class _$GenreUpdateParamCopyWithImpl<$Res, $Val extends GenreUpdateParam>
    implements $GenreUpdateParamCopyWith<$Res> {
  _$GenreUpdateParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenreUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenreUpdateParamImplCopyWith<$Res>
    implements $GenreUpdateParamCopyWith<$Res> {
  factory _$$GenreUpdateParamImplCopyWith(_$GenreUpdateParamImpl value,
          $Res Function(_$GenreUpdateParamImpl) then) =
      __$$GenreUpdateParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: GenreUpdateParam.nameKey) String? name});
}

/// @nodoc
class __$$GenreUpdateParamImplCopyWithImpl<$Res>
    extends _$GenreUpdateParamCopyWithImpl<$Res, _$GenreUpdateParamImpl>
    implements _$$GenreUpdateParamImplCopyWith<$Res> {
  __$$GenreUpdateParamImplCopyWithImpl(_$GenreUpdateParamImpl _value,
      $Res Function(_$GenreUpdateParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenreUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$GenreUpdateParamImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$GenreUpdateParamImpl extends _GenreUpdateParam {
  const _$GenreUpdateParamImpl(
      {@JsonKey(name: GenreUpdateParam.nameKey) required this.name})
      : super._();

  factory _$GenreUpdateParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenreUpdateParamImplFromJson(json);

  @override
  @JsonKey(name: GenreUpdateParam.nameKey)
  final String? name;

  @override
  String toString() {
    return 'GenreUpdateParam(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenreUpdateParamImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of GenreUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenreUpdateParamImplCopyWith<_$GenreUpdateParamImpl> get copyWith =>
      __$$GenreUpdateParamImplCopyWithImpl<_$GenreUpdateParamImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenreUpdateParamImplToJson(
      this,
    );
  }
}

abstract class _GenreUpdateParam extends GenreUpdateParam {
  const factory _GenreUpdateParam(
      {@JsonKey(name: GenreUpdateParam.nameKey)
      required final String? name}) = _$GenreUpdateParamImpl;
  const _GenreUpdateParam._() : super._();

  factory _GenreUpdateParam.fromJson(Map<String, dynamic> json) =
      _$GenreUpdateParamImpl.fromJson;

  @override
  @JsonKey(name: GenreUpdateParam.nameKey)
  String? get name;

  /// Create a copy of GenreUpdateParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenreUpdateParamImplCopyWith<_$GenreUpdateParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
