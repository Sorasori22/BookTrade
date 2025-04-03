// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ads_schema.schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdsModel _$AdsModelFromJson(Map<String, dynamic> json) {
  return _AdsModel.fromJson(json);
}

/// @nodoc
mixin _$AdsModel {
  @JsonKey(name: AdsModel.idKey)
  AdsId get id => throw _privateConstructorUsedError;
  @JsonKey(name: AdsModel.titleKey)
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: AdsModel.descriptionKey)
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: AdsModel.urlKey)
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: AdsModel.imagePathKey)
  ImageObject get imagePath => throw _privateConstructorUsedError;
  @JsonKey(name: AdsModel.buttonTextKey)
  String get buttonText => throw _privateConstructorUsedError;
  @JsonKey(name: AdsModel.activeKey)
  bool get active => throw _privateConstructorUsedError;
  @JsonKey(name: AdsModel.createdAtKey)
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this AdsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdsModelCopyWith<AdsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdsModelCopyWith<$Res> {
  factory $AdsModelCopyWith(AdsModel value, $Res Function(AdsModel) then) =
      _$AdsModelCopyWithImpl<$Res, AdsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: AdsModel.idKey) AdsId id,
      @JsonKey(name: AdsModel.titleKey) String title,
      @JsonKey(name: AdsModel.descriptionKey) String description,
      @JsonKey(name: AdsModel.urlKey) String url,
      @JsonKey(name: AdsModel.imagePathKey) ImageObject imagePath,
      @JsonKey(name: AdsModel.buttonTextKey) String buttonText,
      @JsonKey(name: AdsModel.activeKey) bool active,
      @JsonKey(name: AdsModel.createdAtKey) DateTime createdAt});
}

/// @nodoc
class _$AdsModelCopyWithImpl<$Res, $Val extends AdsModel>
    implements $AdsModelCopyWith<$Res> {
  _$AdsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? url = null,
    Object? imagePath = null,
    Object? buttonText = null,
    Object? active = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as AdsId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as ImageObject,
      buttonText: null == buttonText
          ? _value.buttonText
          : buttonText // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdsModelImplCopyWith<$Res>
    implements $AdsModelCopyWith<$Res> {
  factory _$$AdsModelImplCopyWith(
          _$AdsModelImpl value, $Res Function(_$AdsModelImpl) then) =
      __$$AdsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: AdsModel.idKey) AdsId id,
      @JsonKey(name: AdsModel.titleKey) String title,
      @JsonKey(name: AdsModel.descriptionKey) String description,
      @JsonKey(name: AdsModel.urlKey) String url,
      @JsonKey(name: AdsModel.imagePathKey) ImageObject imagePath,
      @JsonKey(name: AdsModel.buttonTextKey) String buttonText,
      @JsonKey(name: AdsModel.activeKey) bool active,
      @JsonKey(name: AdsModel.createdAtKey) DateTime createdAt});
}

/// @nodoc
class __$$AdsModelImplCopyWithImpl<$Res>
    extends _$AdsModelCopyWithImpl<$Res, _$AdsModelImpl>
    implements _$$AdsModelImplCopyWith<$Res> {
  __$$AdsModelImplCopyWithImpl(
      _$AdsModelImpl _value, $Res Function(_$AdsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? url = null,
    Object? imagePath = null,
    Object? buttonText = null,
    Object? active = null,
    Object? createdAt = null,
  }) {
    return _then(_$AdsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as AdsId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as ImageObject,
      buttonText: null == buttonText
          ? _value.buttonText
          : buttonText // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@TableModel(AdsModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$AdsModelImpl extends _AdsModel {
  const _$AdsModelImpl(
      {@JsonKey(name: AdsModel.idKey) required this.id,
      @JsonKey(name: AdsModel.titleKey) required this.title,
      @JsonKey(name: AdsModel.descriptionKey) required this.description,
      @JsonKey(name: AdsModel.urlKey) required this.url,
      @JsonKey(name: AdsModel.imagePathKey) required this.imagePath,
      @JsonKey(name: AdsModel.buttonTextKey) required this.buttonText,
      @JsonKey(name: AdsModel.activeKey) required this.active,
      @JsonKey(name: AdsModel.createdAtKey) required this.createdAt})
      : super._();

  factory _$AdsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdsModelImplFromJson(json);

  @override
  @JsonKey(name: AdsModel.idKey)
  final AdsId id;
  @override
  @JsonKey(name: AdsModel.titleKey)
  final String title;
  @override
  @JsonKey(name: AdsModel.descriptionKey)
  final String description;
  @override
  @JsonKey(name: AdsModel.urlKey)
  final String url;
  @override
  @JsonKey(name: AdsModel.imagePathKey)
  final ImageObject imagePath;
  @override
  @JsonKey(name: AdsModel.buttonTextKey)
  final String buttonText;
  @override
  @JsonKey(name: AdsModel.activeKey)
  final bool active;
  @override
  @JsonKey(name: AdsModel.createdAtKey)
  final DateTime createdAt;

  @override
  String toString() {
    return 'AdsModel(id: $id, title: $title, description: $description, url: $url, imagePath: $imagePath, buttonText: $buttonText, active: $active, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.buttonText, buttonText) ||
                other.buttonText == buttonText) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, url,
      imagePath, buttonText, active, createdAt);

  /// Create a copy of AdsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdsModelImplCopyWith<_$AdsModelImpl> get copyWith =>
      __$$AdsModelImplCopyWithImpl<_$AdsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdsModelImplToJson(
      this,
    );
  }
}

abstract class _AdsModel extends AdsModel {
  const factory _AdsModel(
      {@JsonKey(name: AdsModel.idKey) required final AdsId id,
      @JsonKey(name: AdsModel.titleKey) required final String title,
      @JsonKey(name: AdsModel.descriptionKey) required final String description,
      @JsonKey(name: AdsModel.urlKey) required final String url,
      @JsonKey(name: AdsModel.imagePathKey)
      required final ImageObject imagePath,
      @JsonKey(name: AdsModel.buttonTextKey) required final String buttonText,
      @JsonKey(name: AdsModel.activeKey) required final bool active,
      @JsonKey(name: AdsModel.createdAtKey)
      required final DateTime createdAt}) = _$AdsModelImpl;
  const _AdsModel._() : super._();

  factory _AdsModel.fromJson(Map<String, dynamic> json) =
      _$AdsModelImpl.fromJson;

  @override
  @JsonKey(name: AdsModel.idKey)
  AdsId get id;
  @override
  @JsonKey(name: AdsModel.titleKey)
  String get title;
  @override
  @JsonKey(name: AdsModel.descriptionKey)
  String get description;
  @override
  @JsonKey(name: AdsModel.urlKey)
  String get url;
  @override
  @JsonKey(name: AdsModel.imagePathKey)
  ImageObject get imagePath;
  @override
  @JsonKey(name: AdsModel.buttonTextKey)
  String get buttonText;
  @override
  @JsonKey(name: AdsModel.activeKey)
  bool get active;
  @override
  @JsonKey(name: AdsModel.createdAtKey)
  DateTime get createdAt;

  /// Create a copy of AdsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdsModelImplCopyWith<_$AdsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
