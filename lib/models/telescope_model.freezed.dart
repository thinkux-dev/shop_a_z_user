// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'telescope_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TelescopeModel _$TelescopeModelFromJson(Map<String, dynamic> json) {
  return _TelescopeModel.fromJson(json);
}

/// @nodoc
mixin _$TelescopeModel {
  String? get id => throw _privateConstructorUsedError;
  set id(String? value) => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  set model(String value) => throw _privateConstructorUsedError;
  Brand get brand => throw _privateConstructorUsedError;
  set brand(Brand value) => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  set type(String value) => throw _privateConstructorUsedError;
  String get dimension => throw _privateConstructorUsedError;
  set dimension(String value) => throw _privateConstructorUsedError;
  num get weightInPound => throw _privateConstructorUsedError;
  set weightInPound(num value) => throw _privateConstructorUsedError;
  String get focustype => throw _privateConstructorUsedError;
  set focustype(String value) => throw _privateConstructorUsedError;
  num get lensDiameterInMM => throw _privateConstructorUsedError;
  set lensDiameterInMM(num value) => throw _privateConstructorUsedError;
  String get mountDescription => throw _privateConstructorUsedError;
  set mountDescription(String value) => throw _privateConstructorUsedError;
  num get price => throw _privateConstructorUsedError;
  set price(num value) => throw _privateConstructorUsedError;
  num get stock => throw _privateConstructorUsedError;
  set stock(num value) => throw _privateConstructorUsedError;
  num get avgRating => throw _privateConstructorUsedError;
  set avgRating(num value) => throw _privateConstructorUsedError;
  num get discount => throw _privateConstructorUsedError;
  set discount(num value) => throw _privateConstructorUsedError;
  ImageModel get thumbnail => throw _privateConstructorUsedError;
  set thumbnail(ImageModel value) => throw _privateConstructorUsedError;
  List<ImageModel> get additionalImage => throw _privateConstructorUsedError;
  set additionalImage(List<ImageModel> value) =>
      throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  set description(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TelescopeModelCopyWith<TelescopeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TelescopeModelCopyWith<$Res> {
  factory $TelescopeModelCopyWith(
          TelescopeModel value, $Res Function(TelescopeModel) then) =
      _$TelescopeModelCopyWithImpl<$Res, TelescopeModel>;
  @useResult
  $Res call(
      {String? id,
      String model,
      Brand brand,
      String type,
      String dimension,
      num weightInPound,
      String focustype,
      num lensDiameterInMM,
      String mountDescription,
      num price,
      num stock,
      num avgRating,
      num discount,
      ImageModel thumbnail,
      List<ImageModel> additionalImage,
      String? description});

  $BrandCopyWith<$Res> get brand;
  $ImageModelCopyWith<$Res> get thumbnail;
}

/// @nodoc
class _$TelescopeModelCopyWithImpl<$Res, $Val extends TelescopeModel>
    implements $TelescopeModelCopyWith<$Res> {
  _$TelescopeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? model = null,
    Object? brand = null,
    Object? type = null,
    Object? dimension = null,
    Object? weightInPound = null,
    Object? focustype = null,
    Object? lensDiameterInMM = null,
    Object? mountDescription = null,
    Object? price = null,
    Object? stock = null,
    Object? avgRating = null,
    Object? discount = null,
    Object? thumbnail = null,
    Object? additionalImage = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as Brand,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      dimension: null == dimension
          ? _value.dimension
          : dimension // ignore: cast_nullable_to_non_nullable
              as String,
      weightInPound: null == weightInPound
          ? _value.weightInPound
          : weightInPound // ignore: cast_nullable_to_non_nullable
              as num,
      focustype: null == focustype
          ? _value.focustype
          : focustype // ignore: cast_nullable_to_non_nullable
              as String,
      lensDiameterInMM: null == lensDiameterInMM
          ? _value.lensDiameterInMM
          : lensDiameterInMM // ignore: cast_nullable_to_non_nullable
              as num,
      mountDescription: null == mountDescription
          ? _value.mountDescription
          : mountDescription // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as num,
      avgRating: null == avgRating
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as num,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as ImageModel,
      additionalImage: null == additionalImage
          ? _value.additionalImage
          : additionalImage // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BrandCopyWith<$Res> get brand {
    return $BrandCopyWith<$Res>(_value.brand, (value) {
      return _then(_value.copyWith(brand: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageModelCopyWith<$Res> get thumbnail {
    return $ImageModelCopyWith<$Res>(_value.thumbnail, (value) {
      return _then(_value.copyWith(thumbnail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TelescopeModelImplCopyWith<$Res>
    implements $TelescopeModelCopyWith<$Res> {
  factory _$$TelescopeModelImplCopyWith(_$TelescopeModelImpl value,
          $Res Function(_$TelescopeModelImpl) then) =
      __$$TelescopeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String model,
      Brand brand,
      String type,
      String dimension,
      num weightInPound,
      String focustype,
      num lensDiameterInMM,
      String mountDescription,
      num price,
      num stock,
      num avgRating,
      num discount,
      ImageModel thumbnail,
      List<ImageModel> additionalImage,
      String? description});

  @override
  $BrandCopyWith<$Res> get brand;
  @override
  $ImageModelCopyWith<$Res> get thumbnail;
}

/// @nodoc
class __$$TelescopeModelImplCopyWithImpl<$Res>
    extends _$TelescopeModelCopyWithImpl<$Res, _$TelescopeModelImpl>
    implements _$$TelescopeModelImplCopyWith<$Res> {
  __$$TelescopeModelImplCopyWithImpl(
      _$TelescopeModelImpl _value, $Res Function(_$TelescopeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? model = null,
    Object? brand = null,
    Object? type = null,
    Object? dimension = null,
    Object? weightInPound = null,
    Object? focustype = null,
    Object? lensDiameterInMM = null,
    Object? mountDescription = null,
    Object? price = null,
    Object? stock = null,
    Object? avgRating = null,
    Object? discount = null,
    Object? thumbnail = null,
    Object? additionalImage = null,
    Object? description = freezed,
  }) {
    return _then(_$TelescopeModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as Brand,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      dimension: null == dimension
          ? _value.dimension
          : dimension // ignore: cast_nullable_to_non_nullable
              as String,
      weightInPound: null == weightInPound
          ? _value.weightInPound
          : weightInPound // ignore: cast_nullable_to_non_nullable
              as num,
      focustype: null == focustype
          ? _value.focustype
          : focustype // ignore: cast_nullable_to_non_nullable
              as String,
      lensDiameterInMM: null == lensDiameterInMM
          ? _value.lensDiameterInMM
          : lensDiameterInMM // ignore: cast_nullable_to_non_nullable
              as num,
      mountDescription: null == mountDescription
          ? _value.mountDescription
          : mountDescription // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as num,
      avgRating: null == avgRating
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as num,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as ImageModel,
      additionalImage: null == additionalImage
          ? _value.additionalImage
          : additionalImage // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$TelescopeModelImpl implements _TelescopeModel {
  _$TelescopeModelImpl(
      {this.id,
      required this.model,
      required this.brand,
      required this.type,
      required this.dimension,
      required this.weightInPound,
      required this.focustype,
      required this.lensDiameterInMM,
      required this.mountDescription,
      required this.price,
      required this.stock,
      this.avgRating = 0.0,
      this.discount = 0,
      required this.thumbnail,
      required this.additionalImage,
      this.description});

  factory _$TelescopeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TelescopeModelImplFromJson(json);

  @override
  String? id;
  @override
  String model;
  @override
  Brand brand;
  @override
  String type;
  @override
  String dimension;
  @override
  num weightInPound;
  @override
  String focustype;
  @override
  num lensDiameterInMM;
  @override
  String mountDescription;
  @override
  num price;
  @override
  num stock;
  @override
  @JsonKey()
  num avgRating;
  @override
  @JsonKey()
  num discount;
  @override
  ImageModel thumbnail;
  @override
  List<ImageModel> additionalImage;
  @override
  String? description;

  @override
  String toString() {
    return 'TelescopeModel(id: $id, model: $model, brand: $brand, type: $type, dimension: $dimension, weightInPound: $weightInPound, focustype: $focustype, lensDiameterInMM: $lensDiameterInMM, mountDescription: $mountDescription, price: $price, stock: $stock, avgRating: $avgRating, discount: $discount, thumbnail: $thumbnail, additionalImage: $additionalImage, description: $description)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TelescopeModelImplCopyWith<_$TelescopeModelImpl> get copyWith =>
      __$$TelescopeModelImplCopyWithImpl<_$TelescopeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TelescopeModelImplToJson(
      this,
    );
  }
}

abstract class _TelescopeModel implements TelescopeModel {
  factory _TelescopeModel(
      {String? id,
      required String model,
      required Brand brand,
      required String type,
      required String dimension,
      required num weightInPound,
      required String focustype,
      required num lensDiameterInMM,
      required String mountDescription,
      required num price,
      required num stock,
      num avgRating,
      num discount,
      required ImageModel thumbnail,
      required List<ImageModel> additionalImage,
      String? description}) = _$TelescopeModelImpl;

  factory _TelescopeModel.fromJson(Map<String, dynamic> json) =
      _$TelescopeModelImpl.fromJson;

  @override
  String? get id;
  set id(String? value);
  @override
  String get model;
  set model(String value);
  @override
  Brand get brand;
  set brand(Brand value);
  @override
  String get type;
  set type(String value);
  @override
  String get dimension;
  set dimension(String value);
  @override
  num get weightInPound;
  set weightInPound(num value);
  @override
  String get focustype;
  set focustype(String value);
  @override
  num get lensDiameterInMM;
  set lensDiameterInMM(num value);
  @override
  String get mountDescription;
  set mountDescription(String value);
  @override
  num get price;
  set price(num value);
  @override
  num get stock;
  set stock(num value);
  @override
  num get avgRating;
  set avgRating(num value);
  @override
  num get discount;
  set discount(num value);
  @override
  ImageModel get thumbnail;
  set thumbnail(ImageModel value);
  @override
  List<ImageModel> get additionalImage;
  set additionalImage(List<ImageModel> value);
  @override
  String? get description;
  set description(String? value);
  @override
  @JsonKey(ignore: true)
  _$$TelescopeModelImplCopyWith<_$TelescopeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
