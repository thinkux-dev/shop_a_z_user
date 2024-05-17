// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModel {
  String get orderId => throw _privateConstructorUsedError;
  set orderId(String value) => throw _privateConstructorUsedError;
  AppUserModel get appUser => throw _privateConstructorUsedError;
  set appUser(AppUserModel value) => throw _privateConstructorUsedError;
  String get orderStatus => throw _privateConstructorUsedError;
  set orderStatus(String value) => throw _privateConstructorUsedError;
  String get paymentMethod => throw _privateConstructorUsedError;
  set paymentMethod(String value) => throw _privateConstructorUsedError;
  num get totalAmount => throw _privateConstructorUsedError;
  set totalAmount(num value) => throw _privateConstructorUsedError;
  @TimestampConverter()
  Timestamp get orderDate => throw _privateConstructorUsedError;
  @TimestampConverter()
  set orderDate(Timestamp value) => throw _privateConstructorUsedError;
  List<CartModel> get itemDetails => throw _privateConstructorUsedError;
  set itemDetails(List<CartModel> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) then) =
      _$OrderModelCopyWithImpl<$Res, OrderModel>;
  @useResult
  $Res call(
      {String orderId,
      AppUserModel appUser,
      String orderStatus,
      String paymentMethod,
      num totalAmount,
      @TimestampConverter() Timestamp orderDate,
      List<CartModel> itemDetails});

  $AppUserModelCopyWith<$Res> get appUser;
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res, $Val extends OrderModel>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? appUser = null,
    Object? orderStatus = null,
    Object? paymentMethod = null,
    Object? totalAmount = null,
    Object? orderDate = null,
    Object? itemDetails = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      appUser: null == appUser
          ? _value.appUser
          : appUser // ignore: cast_nullable_to_non_nullable
              as AppUserModel,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as num,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      itemDetails: null == itemDetails
          ? _value.itemDetails
          : itemDetails // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserModelCopyWith<$Res> get appUser {
    return $AppUserModelCopyWith<$Res>(_value.appUser, (value) {
      return _then(_value.copyWith(appUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderModelImplCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$OrderModelImplCopyWith(
          _$OrderModelImpl value, $Res Function(_$OrderModelImpl) then) =
      __$$OrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String orderId,
      AppUserModel appUser,
      String orderStatus,
      String paymentMethod,
      num totalAmount,
      @TimestampConverter() Timestamp orderDate,
      List<CartModel> itemDetails});

  @override
  $AppUserModelCopyWith<$Res> get appUser;
}

/// @nodoc
class __$$OrderModelImplCopyWithImpl<$Res>
    extends _$OrderModelCopyWithImpl<$Res, _$OrderModelImpl>
    implements _$$OrderModelImplCopyWith<$Res> {
  __$$OrderModelImplCopyWithImpl(
      _$OrderModelImpl _value, $Res Function(_$OrderModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? appUser = null,
    Object? orderStatus = null,
    Object? paymentMethod = null,
    Object? totalAmount = null,
    Object? orderDate = null,
    Object? itemDetails = null,
  }) {
    return _then(_$OrderModelImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      appUser: null == appUser
          ? _value.appUser
          : appUser // ignore: cast_nullable_to_non_nullable
              as AppUserModel,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as num,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      itemDetails: null == itemDetails
          ? _value.itemDetails
          : itemDetails // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$OrderModelImpl implements _OrderModel {
  _$OrderModelImpl(
      {required this.orderId,
      required this.appUser,
      required this.orderStatus,
      required this.paymentMethod,
      required this.totalAmount,
      @TimestampConverter() required this.orderDate,
      required this.itemDetails});

  factory _$OrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderModelImplFromJson(json);

  @override
  String orderId;
  @override
  AppUserModel appUser;
  @override
  String orderStatus;
  @override
  String paymentMethod;
  @override
  num totalAmount;
  @override
  @TimestampConverter()
  Timestamp orderDate;
  @override
  List<CartModel> itemDetails;

  @override
  String toString() {
    return 'OrderModel(orderId: $orderId, appUser: $appUser, orderStatus: $orderStatus, paymentMethod: $paymentMethod, totalAmount: $totalAmount, orderDate: $orderDate, itemDetails: $itemDetails)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      __$$OrderModelImplCopyWithImpl<_$OrderModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderModelImplToJson(
      this,
    );
  }
}

abstract class _OrderModel implements OrderModel {
  factory _OrderModel(
      {required String orderId,
      required AppUserModel appUser,
      required String orderStatus,
      required String paymentMethod,
      required num totalAmount,
      @TimestampConverter() required Timestamp orderDate,
      required List<CartModel> itemDetails}) = _$OrderModelImpl;

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$OrderModelImpl.fromJson;

  @override
  String get orderId;
  set orderId(String value);
  @override
  AppUserModel get appUser;
  set appUser(AppUserModel value);
  @override
  String get orderStatus;
  set orderStatus(String value);
  @override
  String get paymentMethod;
  set paymentMethod(String value);
  @override
  num get totalAmount;
  set totalAmount(num value);
  @override
  @TimestampConverter()
  Timestamp get orderDate;
  @TimestampConverter()
  set orderDate(Timestamp value);
  @override
  List<CartModel> get itemDetails;
  set itemDetails(List<CartModel> value);
  @override
  @JsonKey(ignore: true)
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
