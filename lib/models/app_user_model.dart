import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_a_z_user/model_converters/timestamp_converter.dart';
import 'package:shop_a_z_user/models/user_address_model.dart';
part 'app_user_model.freezed.dart';
part 'app_user_model.g.dart';

@unfreezed
class AppUserModel with _$AppUserModel {
  @JsonSerializable(explicitToJson: true)
  factory AppUserModel({
    required String uid,
    required String email,
    UserAddressModel? userAddressModel,
    String? userName,
    String? phone,
    @TimestampConverter() Timestamp? userCreationTime,
  }) = _AppUserModel;

  factory AppUserModel.fromJson(Map<String, dynamic> json) =>
      _$AppUserModelFromJson(json);
}