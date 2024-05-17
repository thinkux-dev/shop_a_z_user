import 'package:freezed_annotation/freezed_annotation.dart';
part 'brand_model.freezed.dart';
part 'brand_model.g.dart';

@unfreezed
class Brand with _$Brand{
  factory Brand ({
    String? id,
    required String name,
  }) = _Brand;

  factory Brand.fromJson(Map<String, dynamic> json) =>
      _$BrandFromJson(json);
}
