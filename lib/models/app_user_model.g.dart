// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppUserModelImpl _$$AppUserModelImplFromJson(Map<String, dynamic> json) =>
    _$AppUserModelImpl(
      uid: json['uid'] as String,
      email: json['email'] as String,
      userAddressModel: json['userAddressModel'] == null
          ? null
          : UserAddressModel.fromJson(
              json['userAddressModel'] as Map<String, dynamic>),
      userName: json['userName'] as String?,
      phone: json['phone'] as String?,
      userCreationTime: _$JsonConverterFromJson<Timestamp, Timestamp>(
          json['userCreationTime'], const TimestampConverter().fromJson),
    );

Map<String, dynamic> _$$AppUserModelImplToJson(_$AppUserModelImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'userAddressModel': instance.userAddressModel?.toJson(),
      'userName': instance.userName,
      'phone': instance.phone,
      'userCreationTime': _$JsonConverterToJson<Timestamp, Timestamp>(
          instance.userCreationTime, const TimestampConverter().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
