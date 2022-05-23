import 'package:flutter_examen_2p/util/global.dart';

class UserResponse {

  String? name;
  String? email;
  String? pass;
  String? token;
  String? id;

  UserResponse({
    this.name,
    this.email,
    this.pass,
    this.token,
    this.id,
  });

  Map<String, dynamic> toJson() => {
    'name': name,
    'email': email,
    'pass': pass,
    'token': token,
    'id': id,
  };

  UserResponse.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    pass = json['pass'];
    token = json['token'];
    id = json['id'];
  }

  UserResponse.fromJsonLogin(Map<String, dynamic> json) {
    name = json["user"]["name"];
    email = json["user"]["email"];
    pass = json["user"]["pass"];
    id = json["user"]["id"];
    token = json["token"];
  }

}
