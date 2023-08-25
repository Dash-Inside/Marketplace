import 'package:dartz/dartz.dart';
import 'package:marketplace/core/failure/failure.dart';
import 'package:marketplace/src/domain/entities/user.dart';

abstract class UserRepository {
  Future<Either<Failure, User>> addNewUser({
    required String userName,
    required String password,
  });

  Future<Either<Failure, User>> changeUserName({
    required String userName,
  });

  Future<Either<Failure, User>> changeGroup({
    required String groupName,
  });

  Future<Either<Failure, User>> changeDescription({
    required String description,
  });

  Future<Either<Failure, Unit>> deleteUser({
    required int id,
  });
}
