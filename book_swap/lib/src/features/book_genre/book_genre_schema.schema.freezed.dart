// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_genre_schema.schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookGenreModel _$BookGenreModelFromJson(Map<String, dynamic> json) {
  return _BookGenreModel.fromJson(json);
}

/// @nodoc
mixin _$BookGenreModel {
  @JsonKey(name: BookGenreModel.idKey)
  BookGenreId get id => throw _privateConstructorUsedError;
  @JsonKey(name: BookGenreModel.nameKey)
  String get name => throw _privateConstructorUsedError;

  /// Serializes this BookGenreModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookGenreModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookGenreModelCopyWith<BookGenreModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookGenreModelCopyWith<$Res> {
  factory $BookGenreModelCopyWith(
          BookGenreModel value, $Res Function(BookGenreModel) then) =
      _$BookGenreModelCopyWithImpl<$Res, BookGenreModel>;
  @useResult
  $Res call(
      {@JsonKey(name: BookGenreModel.idKey) BookGenreId id,
      @JsonKey(name: BookGenreModel.nameKey) String name});
}

/// @nodoc
class _$BookGenreModelCopyWithImpl<$Res, $Val extends BookGenreModel>
    implements $BookGenreModelCopyWith<$Res> {
  _$BookGenreModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookGenreModel
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
              as BookGenreId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookGenreModelImplCopyWith<$Res>
    implements $BookGenreModelCopyWith<$Res> {
  factory _$$BookGenreModelImplCopyWith(_$BookGenreModelImpl value,
          $Res Function(_$BookGenreModelImpl) then) =
      __$$BookGenreModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: BookGenreModel.idKey) BookGenreId id,
      @JsonKey(name: BookGenreModel.nameKey) String name});
}

/// @nodoc
class __$$BookGenreModelImplCopyWithImpl<$Res>
    extends _$BookGenreModelCopyWithImpl<$Res, _$BookGenreModelImpl>
    implements _$$BookGenreModelImplCopyWith<$Res> {
  __$$BookGenreModelImplCopyWithImpl(
      _$BookGenreModelImpl _value, $Res Function(_$BookGenreModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookGenreModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$BookGenreModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as BookGenreId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@TableModel(BookGenreModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$BookGenreModelImpl extends _BookGenreModel {
  const _$BookGenreModelImpl(
      {@JsonKey(name: BookGenreModel.idKey) required this.id,
      @JsonKey(name: BookGenreModel.nameKey) required this.name})
      : super._();

  factory _$BookGenreModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookGenreModelImplFromJson(json);

  @override
  @JsonKey(name: BookGenreModel.idKey)
  final BookGenreId id;
  @override
  @JsonKey(name: BookGenreModel.nameKey)
  final String name;

  @override
  String toString() {
    return 'BookGenreModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookGenreModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of BookGenreModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookGenreModelImplCopyWith<_$BookGenreModelImpl> get copyWith =>
      __$$BookGenreModelImplCopyWithImpl<_$BookGenreModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookGenreModelImplToJson(
      this,
    );
  }
}

abstract class _BookGenreModel extends BookGenreModel {
  const factory _BookGenreModel(
          {@JsonKey(name: BookGenreModel.idKey) required final BookGenreId id,
          @JsonKey(name: BookGenreModel.nameKey) required final String name}) =
      _$BookGenreModelImpl;
  const _BookGenreModel._() : super._();

  factory _BookGenreModel.fromJson(Map<String, dynamic> json) =
      _$BookGenreModelImpl.fromJson;

  @override
  @JsonKey(name: BookGenreModel.idKey)
  BookGenreId get id;
  @override
  @JsonKey(name: BookGenreModel.nameKey)
  String get name;

  /// Create a copy of BookGenreModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookGenreModelImplCopyWith<_$BookGenreModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookGenreLiteModel _$BookGenreLiteModelFromJson(Map<String, dynamic> json) {
  return _BookGenreLiteModel.fromJson(json);
}

/// @nodoc
mixin _$BookGenreLiteModel {
  @JsonKey(name: BookGenreLiteModel.idKey)
  BookGenreId get id => throw _privateConstructorUsedError;
  @JsonKey(name: BookGenreLiteModel.nameKey)
  String get name => throw _privateConstructorUsedError;

  /// Serializes this BookGenreLiteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookGenreLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookGenreLiteModelCopyWith<BookGenreLiteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookGenreLiteModelCopyWith<$Res> {
  factory $BookGenreLiteModelCopyWith(
          BookGenreLiteModel value, $Res Function(BookGenreLiteModel) then) =
      _$BookGenreLiteModelCopyWithImpl<$Res, BookGenreLiteModel>;
  @useResult
  $Res call(
      {@JsonKey(name: BookGenreLiteModel.idKey) BookGenreId id,
      @JsonKey(name: BookGenreLiteModel.nameKey) String name});
}

/// @nodoc
class _$BookGenreLiteModelCopyWithImpl<$Res, $Val extends BookGenreLiteModel>
    implements $BookGenreLiteModelCopyWith<$Res> {
  _$BookGenreLiteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookGenreLiteModel
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
              as BookGenreId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookGenreLiteModelImplCopyWith<$Res>
    implements $BookGenreLiteModelCopyWith<$Res> {
  factory _$$BookGenreLiteModelImplCopyWith(_$BookGenreLiteModelImpl value,
          $Res Function(_$BookGenreLiteModelImpl) then) =
      __$$BookGenreLiteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: BookGenreLiteModel.idKey) BookGenreId id,
      @JsonKey(name: BookGenreLiteModel.nameKey) String name});
}

/// @nodoc
class __$$BookGenreLiteModelImplCopyWithImpl<$Res>
    extends _$BookGenreLiteModelCopyWithImpl<$Res, _$BookGenreLiteModelImpl>
    implements _$$BookGenreLiteModelImplCopyWith<$Res> {
  __$$BookGenreLiteModelImplCopyWithImpl(_$BookGenreLiteModelImpl _value,
      $Res Function(_$BookGenreLiteModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookGenreLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$BookGenreLiteModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as BookGenreId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@TableModel(BookGenreLiteModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$BookGenreLiteModelImpl extends _BookGenreLiteModel {
  const _$BookGenreLiteModelImpl(
      {@JsonKey(name: BookGenreLiteModel.idKey) required this.id,
      @JsonKey(name: BookGenreLiteModel.nameKey) required this.name})
      : super._();

  factory _$BookGenreLiteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookGenreLiteModelImplFromJson(json);

  @override
  @JsonKey(name: BookGenreLiteModel.idKey)
  final BookGenreId id;
  @override
  @JsonKey(name: BookGenreLiteModel.nameKey)
  final String name;

  @override
  String toString() {
    return 'BookGenreLiteModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookGenreLiteModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of BookGenreLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookGenreLiteModelImplCopyWith<_$BookGenreLiteModelImpl> get copyWith =>
      __$$BookGenreLiteModelImplCopyWithImpl<_$BookGenreLiteModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookGenreLiteModelImplToJson(
      this,
    );
  }
}

abstract class _BookGenreLiteModel extends BookGenreLiteModel {
  const factory _BookGenreLiteModel(
      {@JsonKey(name: BookGenreLiteModel.idKey) required final BookGenreId id,
      @JsonKey(name: BookGenreLiteModel.nameKey)
      required final String name}) = _$BookGenreLiteModelImpl;
  const _BookGenreLiteModel._() : super._();

  factory _BookGenreLiteModel.fromJson(Map<String, dynamic> json) =
      _$BookGenreLiteModelImpl.fromJson;

  @override
  @JsonKey(name: BookGenreLiteModel.idKey)
  BookGenreId get id;
  @override
  @JsonKey(name: BookGenreLiteModel.nameKey)
  String get name;

  /// Create a copy of BookGenreLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookGenreLiteModelImplCopyWith<_$BookGenreLiteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookGenreDetailModel _$BookGenreDetailModelFromJson(Map<String, dynamic> json) {
  return _BookGenreDetailModel.fromJson(json);
}

/// @nodoc
mixin _$BookGenreDetailModel {
  @JsonKey(name: BookGenreDetailModel.idKey)
  BookGenreId get id => throw _privateConstructorUsedError;
  @JsonKey(name: BookGenreDetailModel.nameKey)
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: BookGenreDetailModel.createdAtKey)
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this BookGenreDetailModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookGenreDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookGenreDetailModelCopyWith<BookGenreDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookGenreDetailModelCopyWith<$Res> {
  factory $BookGenreDetailModelCopyWith(BookGenreDetailModel value,
          $Res Function(BookGenreDetailModel) then) =
      _$BookGenreDetailModelCopyWithImpl<$Res, BookGenreDetailModel>;
  @useResult
  $Res call(
      {@JsonKey(name: BookGenreDetailModel.idKey) BookGenreId id,
      @JsonKey(name: BookGenreDetailModel.nameKey) String name,
      @JsonKey(name: BookGenreDetailModel.createdAtKey) DateTime createdAt});
}

/// @nodoc
class _$BookGenreDetailModelCopyWithImpl<$Res,
        $Val extends BookGenreDetailModel>
    implements $BookGenreDetailModelCopyWith<$Res> {
  _$BookGenreDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookGenreDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as BookGenreId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookGenreDetailModelImplCopyWith<$Res>
    implements $BookGenreDetailModelCopyWith<$Res> {
  factory _$$BookGenreDetailModelImplCopyWith(_$BookGenreDetailModelImpl value,
          $Res Function(_$BookGenreDetailModelImpl) then) =
      __$$BookGenreDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: BookGenreDetailModel.idKey) BookGenreId id,
      @JsonKey(name: BookGenreDetailModel.nameKey) String name,
      @JsonKey(name: BookGenreDetailModel.createdAtKey) DateTime createdAt});
}

/// @nodoc
class __$$BookGenreDetailModelImplCopyWithImpl<$Res>
    extends _$BookGenreDetailModelCopyWithImpl<$Res, _$BookGenreDetailModelImpl>
    implements _$$BookGenreDetailModelImplCopyWith<$Res> {
  __$$BookGenreDetailModelImplCopyWithImpl(_$BookGenreDetailModelImpl _value,
      $Res Function(_$BookGenreDetailModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookGenreDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? createdAt = null,
  }) {
    return _then(_$BookGenreDetailModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as BookGenreId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@TableModel(BookGenreDetailModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$BookGenreDetailModelImpl extends _BookGenreDetailModel {
  const _$BookGenreDetailModelImpl(
      {@JsonKey(name: BookGenreDetailModel.idKey) required this.id,
      @JsonKey(name: BookGenreDetailModel.nameKey) required this.name,
      @JsonKey(name: BookGenreDetailModel.createdAtKey)
      required this.createdAt})
      : super._();

  factory _$BookGenreDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookGenreDetailModelImplFromJson(json);

  @override
  @JsonKey(name: BookGenreDetailModel.idKey)
  final BookGenreId id;
  @override
  @JsonKey(name: BookGenreDetailModel.nameKey)
  final String name;
  @override
  @JsonKey(name: BookGenreDetailModel.createdAtKey)
  final DateTime createdAt;

  @override
  String toString() {
    return 'BookGenreDetailModel(id: $id, name: $name, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookGenreDetailModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, createdAt);

  /// Create a copy of BookGenreDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookGenreDetailModelImplCopyWith<_$BookGenreDetailModelImpl>
      get copyWith =>
          __$$BookGenreDetailModelImplCopyWithImpl<_$BookGenreDetailModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookGenreDetailModelImplToJson(
      this,
    );
  }
}

abstract class _BookGenreDetailModel extends BookGenreDetailModel {
  const factory _BookGenreDetailModel(
      {@JsonKey(name: BookGenreDetailModel.idKey) required final BookGenreId id,
      @JsonKey(name: BookGenreDetailModel.nameKey) required final String name,
      @JsonKey(name: BookGenreDetailModel.createdAtKey)
      required final DateTime createdAt}) = _$BookGenreDetailModelImpl;
  const _BookGenreDetailModel._() : super._();

  factory _BookGenreDetailModel.fromJson(Map<String, dynamic> json) =
      _$BookGenreDetailModelImpl.fromJson;

  @override
  @JsonKey(name: BookGenreDetailModel.idKey)
  BookGenreId get id;
  @override
  @JsonKey(name: BookGenreDetailModel.nameKey)
  String get name;
  @override
  @JsonKey(name: BookGenreDetailModel.createdAtKey)
  DateTime get createdAt;

  /// Create a copy of BookGenreDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookGenreDetailModelImplCopyWith<_$BookGenreDetailModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BookGenreCreateParam _$BookGenreCreateParamFromJson(Map<String, dynamic> json) {
  return _BookGenreCreateParam.fromJson(json);
}

/// @nodoc
mixin _$BookGenreCreateParam {
  /// Serializes this BookGenreCreateParam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookGenreCreateParamCopyWith<$Res> {
  factory $BookGenreCreateParamCopyWith(BookGenreCreateParam value,
          $Res Function(BookGenreCreateParam) then) =
      _$BookGenreCreateParamCopyWithImpl<$Res, BookGenreCreateParam>;
}

/// @nodoc
class _$BookGenreCreateParamCopyWithImpl<$Res,
        $Val extends BookGenreCreateParam>
    implements $BookGenreCreateParamCopyWith<$Res> {
  _$BookGenreCreateParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookGenreCreateParam
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BookGenreCreateParamImplCopyWith<$Res> {
  factory _$$BookGenreCreateParamImplCopyWith(_$BookGenreCreateParamImpl value,
          $Res Function(_$BookGenreCreateParamImpl) then) =
      __$$BookGenreCreateParamImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookGenreCreateParamImplCopyWithImpl<$Res>
    extends _$BookGenreCreateParamCopyWithImpl<$Res, _$BookGenreCreateParamImpl>
    implements _$$BookGenreCreateParamImplCopyWith<$Res> {
  __$$BookGenreCreateParamImplCopyWithImpl(_$BookGenreCreateParamImpl _value,
      $Res Function(_$BookGenreCreateParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookGenreCreateParam
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$BookGenreCreateParamImpl extends _BookGenreCreateParam {
  const _$BookGenreCreateParamImpl() : super._();

  factory _$BookGenreCreateParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookGenreCreateParamImplFromJson(json);

  @override
  String toString() {
    return 'BookGenreCreateParam()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookGenreCreateParamImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$BookGenreCreateParamImplToJson(
      this,
    );
  }
}

abstract class _BookGenreCreateParam extends BookGenreCreateParam {
  const factory _BookGenreCreateParam() = _$BookGenreCreateParamImpl;
  const _BookGenreCreateParam._() : super._();

  factory _BookGenreCreateParam.fromJson(Map<String, dynamic> json) =
      _$BookGenreCreateParamImpl.fromJson;
}

BookGenreUpdateParam _$BookGenreUpdateParamFromJson(Map<String, dynamic> json) {
  return _BookGenreUpdateParam.fromJson(json);
}

/// @nodoc
mixin _$BookGenreUpdateParam {
  /// Serializes this BookGenreUpdateParam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookGenreUpdateParamCopyWith<$Res> {
  factory $BookGenreUpdateParamCopyWith(BookGenreUpdateParam value,
          $Res Function(BookGenreUpdateParam) then) =
      _$BookGenreUpdateParamCopyWithImpl<$Res, BookGenreUpdateParam>;
}

/// @nodoc
class _$BookGenreUpdateParamCopyWithImpl<$Res,
        $Val extends BookGenreUpdateParam>
    implements $BookGenreUpdateParamCopyWith<$Res> {
  _$BookGenreUpdateParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookGenreUpdateParam
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BookGenreUpdateParamImplCopyWith<$Res> {
  factory _$$BookGenreUpdateParamImplCopyWith(_$BookGenreUpdateParamImpl value,
          $Res Function(_$BookGenreUpdateParamImpl) then) =
      __$$BookGenreUpdateParamImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookGenreUpdateParamImplCopyWithImpl<$Res>
    extends _$BookGenreUpdateParamCopyWithImpl<$Res, _$BookGenreUpdateParamImpl>
    implements _$$BookGenreUpdateParamImplCopyWith<$Res> {
  __$$BookGenreUpdateParamImplCopyWithImpl(_$BookGenreUpdateParamImpl _value,
      $Res Function(_$BookGenreUpdateParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookGenreUpdateParam
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$BookGenreUpdateParamImpl extends _BookGenreUpdateParam {
  const _$BookGenreUpdateParamImpl() : super._();

  factory _$BookGenreUpdateParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookGenreUpdateParamImplFromJson(json);

  @override
  String toString() {
    return 'BookGenreUpdateParam()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookGenreUpdateParamImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$BookGenreUpdateParamImplToJson(
      this,
    );
  }
}

abstract class _BookGenreUpdateParam extends BookGenreUpdateParam {
  const factory _BookGenreUpdateParam() = _$BookGenreUpdateParamImpl;
  const _BookGenreUpdateParam._() : super._();

  factory _BookGenreUpdateParam.fromJson(Map<String, dynamic> json) =
      _$BookGenreUpdateParamImpl.fromJson;
}
