import 'dart:convert';

import 'package:marketplace/src/domain/entities/user.dart';

class UserModel extends User {
  const UserModel({
    required super.id,
    required super.userName,
    required super.password,
    required super.groupName,
    required super.description,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] as int,
      userName: map['userName'] as String,
      password: map['password'] as String,
      groupName: map['groupName'] as String,
      description: map['description'] as String,
    );
  }

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      "data": {
        'id': id,
        'userName': userName,
        'password': password,
        'groupName': groupName,
        'description': description,
      }
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'TopicModel(id: $id, userName: $userName,password: $password, groupName: $groupName, description: $description)';
  }
}
