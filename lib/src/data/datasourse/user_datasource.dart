import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:marketplace/core/failure/failure.dart';

import 'package:marketplace/src/data/models/user_model.dart';
import 'package:marketplace/src/domain/entities/user.dart';

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

  Future<UserModel> changeDescription({
    required String newDescription,
    required String userName,
    required String password,
    required String groupName,
    required int id,
  }) async {
    try {
      final Response response = await _client.post(
        userUrl,
        data: jsonEncode({
          'newdescription': newDescription,
          'userName': userName,
          'password': password,
          'groupName': groupName,
          'id': id,
        }),
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to update description. Status code: ${response.statusCode}');
      }

      final updatedUser = UserModel.fromJson(response.data);
      return updatedUser;
    } catch (e) {
      throw Exception('An error occurred while updating description: $e');
    }
  }

  Future<UserModel> changeGroup({
    required String description,
    required String userName,
    required String password,
    required String newGroupName,
    required int id,
  }) async {
    try {
      final Response response = await _client.post(
        userUrl,
        data: jsonEncode({
          'description': description,
          'userName': userName,
          'password': password,
          'groupName': newGroupName,
          'id': id,
        }),
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to update group. Status code: ${response.statusCode}');
      }

      final updatedUser = UserModel.fromJson(response.data);
      return updatedUser;
    } catch (e) {
      throw Exception('An error occurred while updating group: $e');
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
