import 'dart:convert';

import 'package:marketplace/src/domain/entities/comments.dart';

class CommentsModel extends Comments {
  const CommentsModel({required super.commentText, required super.id, required super.userName});

  factory CommentsModel.fromMap(Map<String, dynamic> map) {
    return CommentsModel(
      id: map['id'] as int,
      commentText: map['attributes']['commentText'] as String,
      userName: map['attributes']['userName'] as String,
    );
  }

  factory CommentsModel.fromJson(String source) => CommentsModel.fromMap(json.decode(source) as Map<String, dynamic>);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      "data": {
        'id': id,
        'commentText': commentText,
        'userName': userName,
      }
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'TopicModel(id: $id, commentText: $commentText, userName: $userName)';
  }
}
