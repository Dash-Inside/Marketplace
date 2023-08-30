import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:marketplace/core/failure/failure.dart';
import 'package:marketplace/core/services/services.dart';
import 'package:marketplace/src/data/datasourse/topic_datasource.dart';
import 'package:marketplace/src/data/models/topic_model.dart';
import 'package:marketplace/src/domain/entities/topic.dart';
import 'package:marketplace/src/domain/repository/topic_repository.dart';

class TopicRepositoryImpl implements TopicRepository {
  final TopicDataSource topicDataSource = services.get<TopicDataSource>();
  final Dio _client = Dio();
  static const String topicUrl = 'http://127.0.0.1:1337/api/topic-types';
  static const String userUrl = 'http://127.0.0.1:1337/api/user-types';

  @override
  Future<Either<Failure, Topic>> addComment({required String userName, required String commentsText}) async {
    try {
      Map<String, String> newComment = {
        'userName': userName,
        'commentsText': commentsText,
      };

      TopicModel newTopic = await topicDataSource.addComment(commentsText: newComment);

      return Right(newTopic);
    } catch (e) {
      return Left(Failure(message: "Failed to add comment: $e"));
    }
  }

  @override
  Future<Either<Failure, Topic>> addTopic({required String data}) async {
    try {
      final Response response = await _client.get(userUrl);
      final String userResp = response.data['data']['attributes']['userName'];

      TopicModel newTopic = await topicDataSource.addTopic(data: data, likes: 0, groupName: '', id: 0, numComments: 0, userName: '$userResp');

      return Right(newTopic);
    } catch (e) {
      return Left(Failure(message: "Failed to add comment: $e"));
    }
  }

  @override
  Future<Either<Failure, List<Topic>>> getAllTopicsByLikes() async {
    try {
      List<Topic> topics = await topicDataSource.getAllTopicsByLikes();

      return Right(topics);
    } catch (e) {
      return Left(Failure(message: "Failed to fetch topics: $e"));
    }
  }

  @override
  Future<Either<Failure, List<Topic>>> getAllTopicsByTime() async {
    try {
      List<Topic> topics = await topicDataSource.getAllTopicsByTime();

      return Right(topics);
    } catch (e) {
      return Left(Failure(message: "Failed to fetch topics: $e"));
    }
  }

  @override
  Future<Either<Failure, Topic>> getComments(dynamic topicId) async {
    try {
      Topic comments = await topicDataSource.getComments(id: topicId);

      return Right(comments);
    } catch (e) {
      return Left(Failure(message: "Failed to fetch comments: $e"));
    }
  }

  @override
  Future<Either<Failure, Unit>> likeTopic({required int id}) async {
    try {
      await topicDataSource.likeTopic(id: id);

      return const Right(unit);
    } catch (e) {
      return Left(Failure(message: "Failed to like topic: $e"));
    }
  }
}
