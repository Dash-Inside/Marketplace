import 'dart:convert';

import 'package:dio/dio.dart';

import 'package:marketplace/src/data/models/topic_model.dart';

class CommentsDataSource {
  final Dio _client = Dio();
  static const String topicUrl = 'http://127.0.0.1:1337/api/topic-types';
  static const String userUrl = 'http://127.0.0.1:1337/api/user-types';

  Future<TopicModel> addComment({
    required Map<String, String> commentText,
    required int likes,
    required int id,
    required String data,
    required int numComments,
  }) async {
    TopicModel topicModel = TopicModel(
      data: data,
      id: id,
      likes: likes,
      numComments: numComments,
      commentsText: commentText,
    );

    final Response response = await _client.post(
      topicUrl,
      data: jsonEncode({'commentText': commentText}),
    );
    // final Response response = await _client.post(topicUrl, data: jsonEncode(<String, String>{'commentText': commentText.toString()}) );
    return topicModel;
  }
}
