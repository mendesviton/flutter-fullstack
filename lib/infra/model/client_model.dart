// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import '../../domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  final int id;
  final String name;
  final String password;
  final String email;

  UserModel(
    this.id,
    this.name,
    this.password,
    this.email,
  ) : super(
          id: id,
          name: name,
          password: password,
          email: email,
        );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'password': password,
      'email': email,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      map['id'] as int,
      map['name'] as String,
      map['password'] as String,
      map['email'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
