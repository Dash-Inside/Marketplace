import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:marketplace/core/failure/failure.dart';
import 'package:marketplace/core/services/services.dart';
import 'package:marketplace/core/usecase/usecase.dart';
import 'package:marketplace/src/domain/entities/comments.dart';
import 'package:marketplace/src/domain/repository/comments_repository.dart';

class SeeAllCommentsUseCase extends UseCase<List<Comments>, int> {
  @override
  FutureOr<Either<Failure, List<Comments>>> call(p) {
    final CommentsRepository commentsRepository = services.get<CommentsRepository>();

    return commentsRepository.seeAllComments();
  }
}
