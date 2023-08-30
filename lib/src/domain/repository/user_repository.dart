import 'package:dartz/dartz.dart';
import 'package:marketplace/core/failure/failure.dart';
import 'package:marketplace/src/domain/entities/user.dart';

abstract class UserRepository {
  Future<Either<Failure, User>> addNewUser({
    required int id,
    required String description,
    required String groupName,
    required String userName,
    required String password,
  });

  Future<Either<Failure, User>> changeGroup({
    required String description,
    required String userName,
    required String password,
    required String newGroupName,
    required int id,
  });

  Future<Either<Failure, User>> changeDescription({
    required String newdescription,
    required String userName,
    required String password,
    required String groupName,
    required int id,
  });

  Future<Either<Failure, Unit>> deleteUser({
    required int id,
  });
}
