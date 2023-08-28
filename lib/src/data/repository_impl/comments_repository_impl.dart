import 'package:dartz/dartz.dart';
import 'package:marketplace/core/failure/failure.dart';
import 'package:marketplace/src/domain/entities/comments.dart';
import 'package:marketplace/src/domain/repository/comments_repository.dart';

class CommentsRepositoryImpl implements CommentsRepository {
  @override
  Future<Either<Failure, Comments>> addComment({required String commentText}) {
    // TODO: implement addComment
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Comments>>> seeAllComments({required int id}) {
    // TODO: implement seeAllComments
    throw UnimplementedError();
  }
}
