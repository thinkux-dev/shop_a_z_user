// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserAddressModelImpl _$$UserAddressModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserAddressModelImpl(
      streetAddress: json['streetAddress'] as String,
      city: json['city'] as String,
      postCode: json['postCode'] as String,
    );

Map<String, dynamic> _$$UserAddressModelImplToJson(
        _$UserAddressModelImpl instance) =>
    <String, dynamic>{
      'streetAddress': instance.streetAddress,
      'city': instance.city,
      'postCode': instance.postCode,
    };
