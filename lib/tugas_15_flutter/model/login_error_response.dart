// To parse this JSON data, do
//
//     final registerErrorResponse = registerErrorResponseFromJson(jsonString);

import 'dart:convert';

LoginErrorResponse loginErrorResponseFromJson(String str) =>
    LoginErrorResponse.fromJson(json.decode(str));

String loginErrorResponseToJson(LoginErrorResponse data) =>
    json.encode(data.toJson());

class LoginErrorResponse {
  String? message;
  Errors? errors;

  LoginErrorResponse({this.message, this.errors});

  factory LoginErrorResponse.fromJson(Map<String, dynamic> json) =>
      LoginErrorResponse(
        message: json["message"],
        errors: json["errors"] == null ? null : Errors.fromJson(json["errors"]),
      );

  Map<String, dynamic> toJson() => {
    "message": message,
    "errors": errors?.toJson(),
  };
}

class Errors {
  List<String>? email;
  List<String>? password;

  Errors({this.email, this.password});

  factory Errors.fromJson(Map<String, dynamic> json) => Errors(
    email:
        json["email"] == null
            ? []
            : List<String>.from(json["email"]!.map((x) => x)),
    password:
        json["password"] == null
            ? []
            : List<String>.from(json["password"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "email": email == null ? [] : List<dynamic>.from(email!.map((x) => x)),
    "password":
        password == null ? [] : List<dynamic>.from(password!.map((x) => x)),
  };
}
