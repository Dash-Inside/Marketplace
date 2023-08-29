import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:marketplace/src/data/models/topic_model.dart';

class TopicDataSource {
  final Dio _client = Dio();
  static const String topicUrl = 'http://127.0.0.1:1337/api/topic-types';
  static const String userUrl = 'http://127.0.0.1:1337/api/user-types';

  Future<void> addComment({
    required int id,
    required Map<String, String> commentText,
  }) async {
    final Response response = await _client.put(
      'http:/127.0.0.1:1337/api/topic-types/:$id',
      data: jsonEncode({
        'commentsText': commentText,
      }),
    );
  }

  Future<TopicModel> addTopic(
    Map<String, String>? commentText,
    int likes,
    int id,
    int numComments, {
    required String userName,
    required String groupName,
    required String data,
  }) async {
    TopicModel topicModel = TopicModel(
      userName: userName,
      groupName: groupName,
      data: data,
      id: id,
      likes: likes,
      numComments: numComments,
      commentsText: commentText ?? {},
    );
    final Response response = await _client.post(
      topicUrl,
      data: topicModel.toJson(),
    );

    return topicModel;
  }

  Future<dynamic> getComments({
    required int id,
  }) async {
    final Response response = await _client.get(
      ('$topicUrl/$id'),
    );
    final List<dynamic> listMap = response.data['data']['attributes']['commentText'];
    return listMap;
  }

  Future<void> likeTopic({
    required int id,
  }) async {
    final Response response = await _client.get('$topicUrl/$id');
    int likesCount = response.data['data']['attributes']['likes'];
    likesCount = likesCount + 1;
    final Response response2 = await _client.post(
      '$topicUrl/$id',
      data: jsonEncode({
        'likes': likesCount,
      }),
    );
  }

  Future<TopicModel> GetAllTopicsByLikes() async {
    final Response response = await _client.get('http://localhost:1337/admin/content-manager/collectionType/api::topic-type.topic-type?page=1&pageSize=10&sort=likes:DESC');
    return response.data['data']['attributes'];
  }

  Future<TopicModel> GetAllTopicsByTime() async {
    final Response response = await _client.get('http://localhost:1337/admin/content-manager/collectionType/api::topic-type.topic-type?page=1&pageSize=10&sort=createdAt:DESC');
    return response.data['data']['attributes'];
  }
}
