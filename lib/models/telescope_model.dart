import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_a_z_user/models/brand_model.dart';
import 'package:shop_a_z_user/models/image_model.dart';

part 'telescope_model.freezed.dart';
part 'telescope_model.g.dart';

@unfreezed
class TelescopeModel with _$TelescopeModel {
  @JsonSerializable(explicitToJson: true)
  factory TelescopeModel({
    String? id,
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
    @Default(0.0) num avgRating,
    @Default(0) num discount,
    required ImageModel thumbnail,
    required List<ImageModel> additionalImage,
    String? description,
  }) = _TelescopeModel;

  factory TelescopeModel.fromJson(Map<String, dynamic> json) =>
      _$TelescopeModelFromJson(json);
}