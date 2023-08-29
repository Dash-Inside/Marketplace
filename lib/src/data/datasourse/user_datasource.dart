import 'dart:convert';

import 'package:dio/dio.dart';

import 'package:marketplace/src/data/models/user_model.dart';

class UserDataSource {
  final Dio _client = Dio();
  static const String topicUrl = 'http://127.0.0.1:1337/api/topic-types';
  static const String userUrl = 'http://127.0.0.1:1337/api/user-types';

  Future<UserModel> addTopic(
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

    return userModel;
  }

  Future<void> changeDescription({required int id, required String newDescription}) async {
    final Response response = await _client.post(
      '$userUrl/$id',
      data: jsonEncode({
        'description': newDescription,
      }),
    );
  }

  Future<void> changeGroup({
    required int id,
    required String newGroup,
  }) async {
    final Response response2 = await _client.post(
      '$topicUrl/$id',
      data: jsonEncode({
        'groupName': newGroup,
      }),
    );
  }

  Future<void> changeName({
    required int id,
    required String newName,
  }) async {
    final Response response2 = await _client.post(
      '$topicUrl/$id',
      data: jsonEncode({
        'userName': newName,
      }),
    );
  }

  Future<void> deleteAccount({
    required int id,
  }) async {
    final Response response2 = await _client.delete(
      '$topicUrl/$id',
    );
  }
}
