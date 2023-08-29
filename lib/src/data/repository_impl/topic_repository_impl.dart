import 'package:dartz/dartz.dart';
import 'package:marketplace/core/failure/failure.dart';
import 'package:marketplace/src/domain/entities/topic.dart';
import 'package:marketplace/src/domain/repository/topic_repository.dart';

class TopicRepositoryImpl implements TopicRepository {
  @override
  Future<Either<Failure, Topic>> addComment({required String userName, required String commentText}) {
    // TODO: implement addComment
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Topic>> addTopic({required String data}) {
    // TODO: implement addTopic
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Topic>>> getAllTopicsByLikes() {
    // TODO: implement getAllTopicsByLikes
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Topic>>> getAllTopicsByTime() {
    // TODO: implement getAllTopicsByTime
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Topic>> getComments(unit) {
    // TODO: implement getComments
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> likeTopic({required int id}) {
    // TODO: implement likeTopic
    throw UnimplementedError();
  }
}
