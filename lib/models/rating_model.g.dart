// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RatingModelImpl _$$RatingModelImplFromJson(Map<String, dynamic> json) =>
    _$RatingModelImpl(
      appUserModel:
          AppUserModel.fromJson(json['appUserModel'] as Map<String, dynamic>),
      rating: json['rating'] as num,
    );

Map<String, dynamic> _$$RatingModelImplToJson(_$RatingModelImpl instance) =>
    <String, dynamic>{
      'appUserModel': instance.appUserModel.toJson(),
      'rating': instance.rating,
    };
