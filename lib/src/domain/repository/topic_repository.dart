import 'package:dartz/dartz.dart';
import 'package:marketplace/core/failure/failure.dart';
import 'package:marketplace/src/domain/entities/topic.dart';

abstract class TopicRepository {
  Future<Either<Failure, List<Topic>>> getAllTopicsByLikes();

  Future<Either<Failure, List<Topic>>> getAllTopicsByTime();

  Future<Either<Failure, Unit>> likeTopic({
    required int id,
  });

  Future<Either<Failure, Topic>> addTopic({
    required String data,
  });

  Future<Either<Failure, Topic>> getComments(unit);

  Future<Either<Failure, Topic>> addComment({
    required String userName,
    required String commentText,
  });
}
