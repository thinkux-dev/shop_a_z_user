// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rating_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RatingModel _$RatingModelFromJson(Map<String, dynamic> json) {
  return _RatingModel.fromJson(json);
}

/// @nodoc
mixin _$RatingModel {
  AppUserModel get appUserModel => throw _privateConstructorUsedError;
  set appUserModel(AppUserModel value) => throw _privateConstructorUsedError;
  num get rating => throw _privateConstructorUsedError;
  set rating(num value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingModelCopyWith<RatingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingModelCopyWith<$Res> {
  factory $RatingModelCopyWith(
          RatingModel value, $Res Function(RatingModel) then) =
      _$RatingModelCopyWithImpl<$Res, RatingModel>;
  @useResult
  $Res call({AppUserModel appUserModel, num rating});

  $AppUserModelCopyWith<$Res> get appUserModel;
}

/// @nodoc
class _$RatingModelCopyWithImpl<$Res, $Val extends RatingModel>
    implements $RatingModelCopyWith<$Res> {
  _$RatingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appUserModel = null,
    Object? rating = null,
  }) {
    return _then(_value.copyWith(
      appUserModel: null == appUserModel
          ? _value.appUserModel
          : appUserModel // ignore: cast_nullable_to_non_nullable
              as AppUserModel,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserModelCopyWith<$Res> get appUserModel {
    return $AppUserModelCopyWith<$Res>(_value.appUserModel, (value) {
      return _then(_value.copyWith(appUserModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RatingModelImplCopyWith<$Res>
    implements $RatingModelCopyWith<$Res> {
  factory _$$RatingModelImplCopyWith(
          _$RatingModelImpl value, $Res Function(_$RatingModelImpl) then) =
      __$$RatingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppUserModel appUserModel, num rating});

  @override
  $AppUserModelCopyWith<$Res> get appUserModel;
}

/// @nodoc
class __$$RatingModelImplCopyWithImpl<$Res>
    extends _$RatingModelCopyWithImpl<$Res, _$RatingModelImpl>
    implements _$$RatingModelImplCopyWith<$Res> {
  __$$RatingModelImplCopyWithImpl(
      _$RatingModelImpl _value, $Res Function(_$RatingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appUserModel = null,
    Object? rating = null,
  }) {
    return _then(_$RatingModelImpl(
      appUserModel: null == appUserModel
          ? _value.appUserModel
          : appUserModel // ignore: cast_nullable_to_non_nullable
              as AppUserModel,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$RatingModelImpl implements _RatingModel {
  _$RatingModelImpl({required this.appUserModel, required this.rating});

  factory _$RatingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingModelImplFromJson(json);

  @override
  AppUserModel appUserModel;
  @override
  num rating;

  @override
  String toString() {
    return 'RatingModel(appUserModel: $appUserModel, rating: $rating)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingModelImplCopyWith<_$RatingModelImpl> get copyWith =>
      __$$RatingModelImplCopyWithImpl<_$RatingModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingModelImplToJson(
      this,
    );
  }
}

abstract class _RatingModel implements RatingModel {
  factory _RatingModel(
      {required AppUserModel appUserModel,
      required num rating}) = _$RatingModelImpl;

  factory _RatingModel.fromJson(Map<String, dynamic> json) =
      _$RatingModelImpl.fromJson;

  @override
  AppUserModel get appUserModel;
  set appUserModel(AppUserModel value);
  @override
  num get rating;
  set rating(num value);
  @override
  @JsonKey(ignore: true)
  _$$RatingModelImplCopyWith<_$RatingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
