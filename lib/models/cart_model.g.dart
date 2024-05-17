// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartModelImpl _$$CartModelImplFromJson(Map<String, dynamic> json) =>
    _$CartModelImpl(
      telescopeId: json['telescopeId'] as String,
      telescopeModel: json['telescopeModel'] as String,
      price: json['price'] as num,
      imageUrl: json['imageUrl'] as String,
      quantity: json['quantity'] as num? ?? 1,
    );

Map<String, dynamic> _$$CartModelImplToJson(_$CartModelImpl instance) =>
    <String, dynamic>{
      'telescopeId': instance.telescopeId,
      'telescopeModel': instance.telescopeModel,
      'price': instance.price,
      'imageUrl': instance.imageUrl,
      'quantity': instance.quantity,
    };
