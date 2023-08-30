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
      description: p.description,
      groupName: p.groupName,
      id: p.id,
    );
  }
}

class NewUserData {
  final int id;
  final String description;
  final String groupName;
  final String userName;
  final String password;

  NewUserData(
    this.userName,
    this.password,
    this.id,
    this.description,
    this.groupName,
  );
}
