import 'package:dartz/dartz.dart';
import 'package:marketplace/core/failure/failure.dart';
import 'package:marketplace/src/domain/entities/comments.dart';

abstract class CommentsRepository {
  Future<Either<Failure, List<Comments>>> seeAllComments({
    required int id,
  });

  Future<Either<Failure, Comments>> addComment({
    required String commentText,
  });
}
