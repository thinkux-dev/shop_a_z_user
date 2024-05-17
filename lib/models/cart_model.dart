import 'package:freezed_annotation/freezed_annotation.dart';
part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

@unfreezed
class CartModel with _$CartModel {
  factory CartModel({
    required String telescopeId,
    required String telescopeModel,
    required num price,
    required String imageUrl,
    @Default(1) num quantity,
  }) = _CartModel;

  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
}