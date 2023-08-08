import 'package:json_annotation/json_annotation.dart';

part 'user_data_model.g.dart';

@JsonSerializable()
class UserDataModel {
  String? uID;
  String? name;
  String? email;
  String? mobileNo;
  String? address;
  String? password;
  String? confirmPassword;

  UserDataModel({
    this.uID,
    this.name,
    this.email,
    this.mobileNo,
    this.address,
    this.password,
    this.confirmPassword,
  });

  factory UserDataModel.fromJson(Map<String, dynamic> json) =>
      _$UserDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataModelToJson(this);
}
