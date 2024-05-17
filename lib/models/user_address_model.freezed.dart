// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_address_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserAddressModel _$UserAddressModelFromJson(Map<String, dynamic> json) {
  return _UserAddressModel.fromJson(json);
}

/// @nodoc
mixin _$UserAddressModel {
  String get streetAddress => throw _privateConstructorUsedError;
  set streetAddress(String value) => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  set city(String value) => throw _privateConstructorUsedError;
  String get postCode => throw _privateConstructorUsedError;
  set postCode(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAddressModelCopyWith<UserAddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAddressModelCopyWith<$Res> {
  factory $UserAddressModelCopyWith(
          UserAddressModel value, $Res Function(UserAddressModel) then) =
      _$UserAddressModelCopyWithImpl<$Res, UserAddressModel>;
  @useResult
  $Res call({String streetAddress, String city, String postCode});
}

/// @nodoc
class _$UserAddressModelCopyWithImpl<$Res, $Val extends UserAddressModel>
    implements $UserAddressModelCopyWith<$Res> {
  _$UserAddressModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streetAddress = null,
    Object? city = null,
    Object? postCode = null,
  }) {
    return _then(_value.copyWith(
      streetAddress: null == streetAddress
          ? _value.streetAddress
          : streetAddress // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      postCode: null == postCode
          ? _value.postCode
          : postCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserAddressModelImplCopyWith<$Res>
    implements $UserAddressModelCopyWith<$Res> {
  factory _$$UserAddressModelImplCopyWith(_$UserAddressModelImpl value,
          $Res Function(_$UserAddressModelImpl) then) =
      __$$UserAddressModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String streetAddress, String city, String postCode});
}

/// @nodoc
class __$$UserAddressModelImplCopyWithImpl<$Res>
    extends _$UserAddressModelCopyWithImpl<$Res, _$UserAddressModelImpl>
    implements _$$UserAddressModelImplCopyWith<$Res> {
  __$$UserAddressModelImplCopyWithImpl(_$UserAddressModelImpl _value,
      $Res Function(_$UserAddressModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streetAddress = null,
    Object? city = null,
    Object? postCode = null,
  }) {
    return _then(_$UserAddressModelImpl(
      streetAddress: null == streetAddress
          ? _value.streetAddress
          : streetAddress // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      postCode: null == postCode
          ? _value.postCode
          : postCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserAddressModelImpl implements _UserAddressModel {
  _$UserAddressModelImpl(
      {required this.streetAddress,
      required this.city,
      required this.postCode});

  factory _$UserAddressModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAddressModelImplFromJson(json);

  @override
  String streetAddress;
  @override
  String city;
  @override
  String postCode;

  @override
  String toString() {
    return 'UserAddressModel(streetAddress: $streetAddress, city: $city, postCode: $postCode)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAddressModelImplCopyWith<_$UserAddressModelImpl> get copyWith =>
      __$$UserAddressModelImplCopyWithImpl<_$UserAddressModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAddressModelImplToJson(
      this,
    );
  }
}

abstract class _UserAddressModel implements UserAddressModel {
  factory _UserAddressModel(
      {required String streetAddress,
      required String city,
      required String postCode}) = _$UserAddressModelImpl;

  factory _UserAddressModel.fromJson(Map<String, dynamic> json) =
      _$UserAddressModelImpl.fromJson;

  @override
  String get streetAddress;
  set streetAddress(String value);
  @override
  String get city;
  set city(String value);
  @override
  String get postCode;
  set postCode(String value);
  @override
  @JsonKey(ignore: true)
  _$$UserAddressModelImplCopyWith<_$UserAddressModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
