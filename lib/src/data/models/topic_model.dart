// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:marketplace/src/domain/entities/topic.dart';

class TopicModel extends Topic {
  const TopicModel({
    required super.data,
    required super.id,
    required super.likes,
    required super.numComments,
    required super.commentsText,
    required super.groupName,
    required super.userName,
  });

  factory TopicModel.fromMap(Map<String, dynamic> map) {
    return TopicModel(
      userName: map['userName'] as String,
      groupName: map['groupName'] as String,
      id: map['id'] as int,
      data: map['data'] as String,
      likes: map['likes'] as int,
      numComments: map['numComments'] as int,
      commentsText: map['commentsText'] as Map<String, String>,
    );
  }

  factory TopicModel.fromJson(String source) => TopicModel.fromMap(json.decode(source) as Map<String, dynamic>);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      "data": {
        'userName': userName,
        'groupName': groupName,
        'id': id,
        'data': data,
        'likes': likes,
        'numComments': numComments,
        'commentsText': commentsText,
      }
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'TopicModel(id: $id, data: $data, likes: $likes, numComments: $numComments, commentsText: $commentsText, userName: $userName, groupName: $groupName)';
  }

  TopicModel copyWith({
    String? data,
    int? id,
    int? likes,
    int? numComments,
    Map<String, String>? commentsText,
    String? groupName,
    String? userName,
  }) {
    return TopicModel(
      data: data ?? this.data,
      id: id ?? this.id,
      likes: likes ?? this.likes,
      numComments: numComments ?? this.numComments,
      commentsText: commentsText ?? this.commentsText,
      groupName: groupName ?? this.groupName,
      userName: userName ?? this.userName,
    );
  }
}
