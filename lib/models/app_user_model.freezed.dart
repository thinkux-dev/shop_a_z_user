// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppUserModel _$AppUserModelFromJson(Map<String, dynamic> json) {
  return _AppUserModel.fromJson(json);
}

/// @nodoc
mixin _$AppUserModel {
  String get uid => throw _privateConstructorUsedError;
  set uid(String value) => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  set email(String value) => throw _privateConstructorUsedError;
  UserAddressModel? get userAddressModel => throw _privateConstructorUsedError;
  set userAddressModel(UserAddressModel? value) =>
      throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  set userName(String? value) => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  set phone(String? value) => throw _privateConstructorUsedError;
  @TimestampConverter()
  Timestamp? get userCreationTime => throw _privateConstructorUsedError;
  @TimestampConverter()
  set userCreationTime(Timestamp? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppUserModelCopyWith<AppUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserModelCopyWith<$Res> {
  factory $AppUserModelCopyWith(
          AppUserModel value, $Res Function(AppUserModel) then) =
      _$AppUserModelCopyWithImpl<$Res, AppUserModel>;
  @useResult
  $Res call(
      {String uid,
      String email,
      UserAddressModel? userAddressModel,
      String? userName,
      String? phone,
      @TimestampConverter() Timestamp? userCreationTime});

  $UserAddressModelCopyWith<$Res>? get userAddressModel;
}

/// @nodoc
class _$AppUserModelCopyWithImpl<$Res, $Val extends AppUserModel>
    implements $AppUserModelCopyWith<$Res> {
  _$AppUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? userAddressModel = freezed,
    Object? userName = freezed,
    Object? phone = freezed,
    Object? userCreationTime = freezed,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      userAddressModel: freezed == userAddressModel
          ? _value.userAddressModel
          : userAddressModel // ignore: cast_nullable_to_non_nullable
              as UserAddressModel?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      userCreationTime: freezed == userCreationTime
          ? _value.userCreationTime
          : userCreationTime // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserAddressModelCopyWith<$Res>? get userAddressModel {
    if (_value.userAddressModel == null) {
      return null;
    }

    return $UserAddressModelCopyWith<$Res>(_value.userAddressModel!, (value) {
      return _then(_value.copyWith(userAddressModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppUserModelImplCopyWith<$Res>
    implements $AppUserModelCopyWith<$Res> {
  factory _$$AppUserModelImplCopyWith(
          _$AppUserModelImpl value, $Res Function(_$AppUserModelImpl) then) =
      __$$AppUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String email,
      UserAddressModel? userAddressModel,
      String? userName,
      String? phone,
      @TimestampConverter() Timestamp? userCreationTime});

  @override
  $UserAddressModelCopyWith<$Res>? get userAddressModel;
}

/// @nodoc
class __$$AppUserModelImplCopyWithImpl<$Res>
    extends _$AppUserModelCopyWithImpl<$Res, _$AppUserModelImpl>
    implements _$$AppUserModelImplCopyWith<$Res> {
  __$$AppUserModelImplCopyWithImpl(
      _$AppUserModelImpl _value, $Res Function(_$AppUserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? userAddressModel = freezed,
    Object? userName = freezed,
    Object? phone = freezed,
    Object? userCreationTime = freezed,
  }) {
    return _then(_$AppUserModelImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      userAddressModel: freezed == userAddressModel
          ? _value.userAddressModel
          : userAddressModel // ignore: cast_nullable_to_non_nullable
              as UserAddressModel?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      userCreationTime: freezed == userCreationTime
          ? _value.userCreationTime
          : userCreationTime // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AppUserModelImpl implements _AppUserModel {
  _$AppUserModelImpl(
      {required this.uid,
      required this.email,
      this.userAddressModel,
      this.userName,
      this.phone,
      @TimestampConverter() this.userCreationTime});

  factory _$AppUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppUserModelImplFromJson(json);

  @override
  String uid;
  @override
  String email;
  @override
  UserAddressModel? userAddressModel;
  @override
  String? userName;
  @override
  String? phone;
  @override
  @TimestampConverter()
  Timestamp? userCreationTime;

  @override
  String toString() {
    return 'AppUserModel(uid: $uid, email: $email, userAddressModel: $userAddressModel, userName: $userName, phone: $phone, userCreationTime: $userCreationTime)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppUserModelImplCopyWith<_$AppUserModelImpl> get copyWith =>
      __$$AppUserModelImplCopyWithImpl<_$AppUserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppUserModelImplToJson(
      this,
    );
  }
}

abstract class _AppUserModel implements AppUserModel {
  factory _AppUserModel(
      {required String uid,
      required String email,
      UserAddressModel? userAddressModel,
      String? userName,
      String? phone,
      @TimestampConverter() Timestamp? userCreationTime}) = _$AppUserModelImpl;

  factory _AppUserModel.fromJson(Map<String, dynamic> json) =
      _$AppUserModelImpl.fromJson;

  @override
  String get uid;
  set uid(String value);
  @override
  String get email;
  set email(String value);
  @override
  UserAddressModel? get userAddressModel;
  set userAddressModel(UserAddressModel? value);
  @override
  String? get userName;
  set userName(String? value);
  @override
  String? get phone;
  set phone(String? value);
  @override
  @TimestampConverter()
  Timestamp? get userCreationTime;
  @TimestampConverter()
  set userCreationTime(Timestamp? value);
  @override
  @JsonKey(ignore: true)
  _$$AppUserModelImplCopyWith<_$AppUserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
