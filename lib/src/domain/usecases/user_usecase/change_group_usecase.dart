import 'package:dartz/dartz.dart';
import 'package:marketplace/core/failure/failure.dart';
import 'package:marketplace/core/services/services.dart';
import 'package:marketplace/core/usecase/usecase.dart';
import 'package:marketplace/src/domain/entities/user.dart';
import 'package:marketplace/src/domain/repository/user_repository.dart';

class ChangeGroupUseCase extends UseCase<User, String> {
  final String description;
  final int id;
  final String password;
  final String userName;

  ChangeGroupUseCase({
    required this.description,
    required this.id,
    required this.password,
    required this.userName,
  });

  @override
  Future<Either<Failure, User>> call(String newgroupName) async {
    final UserRepository userRepository = services.get<UserRepository>();

    return userRepository.changeDescription(
      newdescription: description,
      groupName: newgroupName,
      id: id,
      password: password,
      userName: userName,
    );
  }
}
