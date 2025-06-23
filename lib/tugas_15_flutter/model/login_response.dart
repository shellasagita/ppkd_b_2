// To parse this JSON data, do
//
//     final registerResponse = loginResponseFromJson(jsonString);

import 'dart:convert';

LoginResponse loginResponseFromJson(String str) =>
    LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
  String? message;
  Data? data;

  LoginResponse({this.message, this.data});

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
    message: json["message"],
    data: json["data"] == null ? null : Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {"message": message, "data": data?.toJson()};
}

class Data {
  String? token;
  User? user;

  Data({this.token, this.user});

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    token: json["token"],
    user: json["user"] == null ? null : User.fromJson(json["user"]),
  );

  Map<String, dynamic> toJson() => {"token": token, "user": user?.toJson()};
}

class User {
  String? email;
  String? updatedAt;
  String? createdAt;
  int? id;

  User({this.email, this.updatedAt, this.createdAt, this.id});

  factory User.fromJson(Map<String, dynamic> json) => User(
    email: json["email"],
    updatedAt: json["updated_at"],
    createdAt: json["created_at"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "email": email,
    "updated_at": updatedAt,
    "created_at": createdAt,
    "id": id,
  };
}
