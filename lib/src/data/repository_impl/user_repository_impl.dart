import 'package:dartz/dartz.dart';
import 'package:marketplace/core/failure/failure.dart';
import 'package:marketplace/src/domain/entities/user.dart';
import 'package:marketplace/src/domain/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  @override
  Future<Either<Failure, User>> addNewUser({required String userName, required String password}) {
    // TODO: implement addNewUser
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, User>> changeDescription({required String description}) {
    // TODO: implement changeDescription
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, User>> changeGroup({required String groupName}) {
    // TODO: implement changeGroup
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, User>> changeUserName({required String userName}) {
    // TODO: implement changeUserName
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> deleteUser({required int id}) {
    // TODO: implement deleteUser
    throw UnimplementedError();
  }
}
