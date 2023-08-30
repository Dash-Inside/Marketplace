import 'dart:convert';

import 'package:dio/dio.dart';

import 'package:marketplace/src/data/models/user_model.dart';

class UserDataSource {
  final Dio _client = Dio();
  static const String topicUrl = 'http://127.0.0.1:1337/api/topic-types';
  static const String userUrl = 'http://127.0.0.1:1337/api/user-types';

  Future<UserModel> addUser(
    final int id,
    final String description,
    final String groupName, {
    required String userName,
    required String password,
  }) async {
    UserModel userModel = UserModel(
      id: id,
      userName: userName,
      groupName: groupName,
      password: password,
      description: description,
    );

    final Response response = await _client.post(
      userUrl,
      data: userModel.toJson(),
    );

    if (response.statusCode == 201) {
      return userModel;
    } else {
      throw Exception('Failed to add user. Status code: ${response.statusCode}');
    }
  }

  Future<void> changeDescription({required int id, required String newDescription}) async {
    final Response response = await _client.post(
      '$userUrl/$id',
      data: jsonEncode({
        'description': newDescription,
      }),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to update description. Status code: ${response.statusCode}');
    }
  }

  Future<void> changeGroup({
    required int id,
    required String newGroup,
  }) async {
    final Response response = await _client.post(
      '$topicUrl/$id',
      data: jsonEncode({
        'groupName': newGroup,
      }),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to update group. Status code: ${response.statusCode}');
    }
  }

  Future<void> changeName({
    required int id,
    required String newName,
  }) async {
    final Response response = await _client.post(
      '$userUrl/$id',
      data: jsonEncode({
        'userName': newName,
      }),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to update name. Status code: ${response.statusCode}');
    }
  }

  Future<void> deleteAccount({
    required int id,
  }) async {
    final Response response = await _client.delete(
      '$userUrl/$id',
    );

    if (response.statusCode != 204) {
      throw Exception('Failed to delete account. Status code: ${response.statusCode}');
    }
  }
}
