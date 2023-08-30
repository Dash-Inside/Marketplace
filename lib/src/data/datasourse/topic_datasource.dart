import 'dart:convert';

import 'package:dio/dio.dart';

import 'package:marketplace/src/data/models/topic_model.dart';

class TopicDataSource {
  final Dio _client = Dio();
  static const String topicUrl = 'http://127.0.0.1:1337/api/topic-types';
  static const String userUrl = 'http://127.0.0.1:1337/api/user-types';

  Future<void> addComment({
    required int id,
    required Map<String, String> commentsText,
  }) async {
    final Response response = await _client.put(
      'http://127.0.0.1:1337/api/topic-types/$id',
      data: jsonEncode({
        'commentsText': commentsText,
      }),
    );
    if (response.statusCode != 200) {
      throw Exception('Failed to update comments. Status code: ${response.statusCode}');
    }
  }

  Future<TopicModel> addTopic({
    Map<String, String>? commentText,
    required int likes,
    required int id,
    required int numComments,
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

    if (response.statusCode == 200) {
      return topicModel;
    } else {
      throw Exception('Failed to add topic. Status code: ${response.statusCode}');
    }
  }

  Future<List<dynamic>> getComments({
    required int id,
  }) async {
    final Response response = await _client.get(
      '$topicUrl/$id',
    );
    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = response.data;

      if (responseData.containsKey('data') && responseData['data'] is Map<String, dynamic> && responseData['data'].containsKey('attributes')) {
        final Map<String, dynamic> attributes = responseData['data']['attributes'];

        if (attributes.containsKey('commentText') && attributes['commentText'] is List<dynamic>) {
          return attributes['commentText'];
        } else {
          throw Exception('Invalid commentText data in API response');
        }
      } else {
        throw Exception('Invalid data or attributes in API response');
      }
    } else {
      throw Exception('Failed to fetch comments. Status code: ${response.statusCode}');
    }
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

  Future<List<TopicModel>> getAllTopicsByLikes() async {
    final Response response = await _client.get(
      'http://localhost:1337/admin/content-manager/collectionType/api::topic-type.topic-type?page=1&pageSize=10&sort=likes:DESC',
    );

    if (response.statusCode == 200) {
      final List<dynamic> responseData = response.data['data'];
      final List<TopicModel> topics = [];

      for (final topicData in responseData) {
        final Map<String, dynamic> attributes = topicData['attributes'];
        final TopicModel topic = TopicModel(
          userName: attributes['userName'],
          groupName: attributes['groupName'],
          data: attributes['data'],
          id: attributes['id'],
          likes: attributes['likes'],
          numComments: attributes['numComments'],
          commentsText: Map<String, String>.from(attributes['commentText']),
        );
        topics.add(topic);
      }
      return topics;
    } else {
      throw Exception('Failed to fetch topics. Status code: ${response.statusCode}');
    }
  }

  Future<List<TopicModel>> getAllTopicsByTime() async {
    final Response response = await _client.get(
      'http://localhost:1337/admin/content-manager/collectionType/api::topic-type.topic-type?page=1&pageSize=10&sort=createdAt:DESC',
    );

    if (response.statusCode == 200) {
      final List<dynamic> responseData = response.data['data'];
      final List<TopicModel> topics = [];

      for (final topicData in responseData) {
        final Map<String, dynamic> attributes = topicData['attributes'];
        final TopicModel topic = TopicModel(
          userName: attributes['userName'],
          groupName: attributes['groupName'],
          data: attributes['data'],
          id: attributes['id'],
          likes: attributes['likes'],
          numComments: attributes['numComments'],
          commentsText: Map<String, String>.from(attributes['commentText']),
        );
        topics.add(topic);
      }
      return topics;
    } else {
      throw Exception('Failed to fetch topics. Status code: ${response.statusCode}');
    }
  }
}
