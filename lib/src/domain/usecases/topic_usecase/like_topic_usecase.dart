import 'package:dartz/dartz.dart';
import 'package:marketplace/core/failure/failure.dart';
import 'package:marketplace/core/services/services.dart';
import 'package:marketplace/core/usecase/usecase.dart';
import 'package:marketplace/src/domain/repository/topic_repository.dart';

class LikeTopicUseCase extends UseCase<Unit, int> {
  @override
  Future<Either<Failure, Unit>> call(int p) {
    final TopicRepository topicRepository = services.get<TopicRepository>();

    return topicRepository.likeTopic(
      id: p,
    );
  }
}
