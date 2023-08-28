import 'package:dartz/dartz.dart';
import 'package:marketplace/core/failure/failure.dart';
import 'package:marketplace/core/services/services.dart';
import 'package:marketplace/core/usecase/usecase.dart';
import 'package:marketplace/src/domain/entities/comments.dart';
import 'package:marketplace/src/domain/entities/user.dart';
import 'package:marketplace/src/domain/repository/topic_repository.dart';

class GetCommentsUsecase extends UseCase<Map<User, Comments>, int> {
  @override
  Future<Either<Failure, Map<User, Comments>>> call(int p) {
    final TopicRepository topicRepository = services.get<TopicRepository>();

    return topicRepository.getComments(id: p);
  }
}
