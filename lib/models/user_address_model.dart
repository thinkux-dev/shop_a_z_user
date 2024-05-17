import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_address_model.freezed.dart';
part 'user_address_model.g.dart';

@unfreezed
class UserAddressModel with _$UserAddressModel {
  factory UserAddressModel({
    required String streetAddress,
    required String city,
    required String postCode,
  }) = _UserAddressModel;

  factory UserAddressModel.fromJson(Map<String, dynamic> json) =>
      _$UserAddressModelFromJson(json);
}