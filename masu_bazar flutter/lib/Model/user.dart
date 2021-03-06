import 'dart:convert';

class UserModel {
  final String userId;
  final String name;
  final String email;
  final String password;
  final String confirmPassword;
  final String token;

  UserModel(
      {this.userId,
      this.password,
      this.confirmPassword,
      this.name,
      this.email,
      this.token});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        userId: json['id'],
        name: json['username'],
        email: json['email'],
        token: json['token']);
  }
  Map<String, dynamic> toJson() => {
        "username": name,
        "email": email,
        "password": password,
        "confirmPassword": confirmPassword,
      };
}

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));
String userModelToJson(UserModel data) => json.encode(data.toJson());
