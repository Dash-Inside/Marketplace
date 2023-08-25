import 'package:dartz/dartz.dart';
import 'package:marketplace/core/failure/failure.dart';
import 'package:marketplace/core/services/services.dart';
import 'package:marketplace/core/usecase/usecase.dart';
import 'package:marketplace/src/domain/entities/user.dart';
import 'package:marketplace/src/domain/repository/user_repository.dart';

class AddNewUserUseCase extends UseCase<User, NewUserData> {
  @override
  Future<Either<Failure, User>> call(NewUserData p) {
    final UserRepository userRepository = services.get<UserRepository>();

    return userRepository.addNewUser(
      userName: p.userName,
      password: p.password,
    );
  }
}

class NewUserData {
  final String userName;
  final String password;

  NewUserData(
    this.userName,
    this.password,
  );
}
