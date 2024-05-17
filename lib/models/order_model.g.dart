// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderModelImpl _$$OrderModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderModelImpl(
      orderId: json['orderId'] as String,
      appUser: AppUserModel.fromJson(json['appUser'] as Map<String, dynamic>),
      orderStatus: json['orderStatus'] as String,
      paymentMethod: json['paymentMethod'] as String,
      totalAmount: json['totalAmount'] as num,
      orderDate:
          const TimestampConverter().fromJson(json['orderDate'] as Timestamp),
      itemDetails: (json['itemDetails'] as List<dynamic>)
          .map((e) => CartModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrderModelImplToJson(_$OrderModelImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'appUser': instance.appUser.toJson(),
      'orderStatus': instance.orderStatus,
      'paymentMethod': instance.paymentMethod,
      'totalAmount': instance.totalAmount,
      'orderDate': const TimestampConverter().toJson(instance.orderDate),
      'itemDetails': instance.itemDetails.map((e) => e.toJson()).toList(),
    };
