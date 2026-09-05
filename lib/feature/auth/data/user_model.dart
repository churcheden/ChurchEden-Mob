import 'package:church_eden_mob/feature/auth/domain%20/entity/user_entity.dart';

class UserModel extends UserEntity {
  new({
    required super.phoneNumber,
    required super.email,
    required super.city,
    required super.address,
  });

  factory UserModel.fromJson(Map<dynamic, String> json) {
    return UserModel(
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String,
      city: json['city'] as String,
      address: json['address'] as String,
    );
  }

  Map<dynamic,String>toJson()
  {
  return{
  'phoneNumber':phoneNumber,
  'email':email,
  'city':city,
  'address':address,

  };
}}
