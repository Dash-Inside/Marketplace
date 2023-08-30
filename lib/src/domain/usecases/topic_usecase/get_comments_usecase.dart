import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:marketplace/core/failure/failure.dart';
import 'package:marketplace/core/services/services.dart';
import 'package:marketplace/core/usecase/usecase.dart';
import 'package:marketplace/src/domain/entities/topic.dart';
import 'package:marketplace/src/domain/repository/topic_repository.dart';

class GetCommentsUsecase extends UseCase<Topic, Unit> {
  @override
  FutureOr<Either<Failure, Topic>> call(p) {
    final TopicRepository topicRepository = services.get<TopicRepository>();

    return topicRepository.getComments(unit);
  }
}
