import 'dart:convert';

import 'package:marketplace/src/domain/entities/topic.dart';

class TopicModel extends Topic {
  const TopicModel({
    required super.data,
    required super.id,
    required super.likes,
    required super.numComments,
    required super.commentsId,
  });

  factory TopicModel.fromMap(Map<String, dynamic> map) {
    return TopicModel(
      id: map['id'] as int,
      data: map['data'] as String,
      likes: map['likes'] as int,
      numComments: map['numComments'] as int,
      commentsId: map['commentsId'] as List<int>,
    );
  }

  factory TopicModel.fromJson(String source) => TopicModel.fromMap(json.decode(source) as Map<String, dynamic>);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      "data": {
        'id': id,
        'data': data,
        'likes': likes,
        'numComments': numComments,
        'commentsId': commentsId,
      }
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'TopicModel(id: $id, data: $data, likes: $likes, numComments: $numComments, commentsId: $commentsId)';
  }
}
