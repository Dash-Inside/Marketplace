import 'package:dartz/dartz.dart';
import 'package:marketplace/core/failure/failure.dart';
import 'package:marketplace/core/services/services.dart';
import 'package:marketplace/core/usecase/usecase.dart';
import 'package:marketplace/src/domain/entities/topic.dart';
import 'package:marketplace/src/domain/repository/topic_repository.dart';

class GetAllTopicsByLikes extends UseCase<List<Topic>, Unit> {
  @override
  Future<Either<Failure, List<Topic>>> call(p) {
    final TopicRepository topicRepository = services.get<TopicRepository>();

    return topicRepository.getAllTopicsByLikes();
  }
}
