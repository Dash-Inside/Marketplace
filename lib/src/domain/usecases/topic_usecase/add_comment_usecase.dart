import 'package:dartz/dartz.dart';
import 'package:marketplace/core/failure/failure.dart';
import 'package:marketplace/core/services/services.dart';
import 'package:marketplace/core/usecase/usecase.dart';
import 'package:marketplace/src/domain/entities/topic.dart';
import 'package:marketplace/src/domain/repository/topic_repository.dart';

class AddCommentUseCase extends UseCase<Topic, Map<String, String>> {
  @override
  Future<Either<Failure, Topic>> call(Map<String, String> p) {
    final TopicRepository topicRepository = services.get<TopicRepository>();

    return topicRepository.addComment(
      userName: p.keys.toString(),
      commentText: p.values.toString(),
    );
  }
}
