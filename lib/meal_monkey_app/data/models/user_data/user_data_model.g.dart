// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDataModel _$UserDataModelFromJson(Map<String, dynamic> json) =>
    UserDataModel(
      uID: json['uID'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      mobileNo: json['mobileNo'] as String?,
      address: json['address'] as String?,
      password: json['password'] as String?,
      confirmPassword: json['confirmPassword'] as String?,
    );

Map<String, dynamic> _$UserDataModelToJson(UserDataModel instance) =>
    <String, dynamic>{
      'uID': instance.uID,
      'name': instance.name,
      'email': instance.email,
      'mobileNo': instance.mobileNo,
      'address': instance.address,
      'password': instance.password,
      'confirmPassword': instance.confirmPassword,
    };
