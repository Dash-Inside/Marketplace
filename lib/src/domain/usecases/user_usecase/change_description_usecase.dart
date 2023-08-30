import 'package:dartz/dartz.dart';
import 'package:marketplace/core/failure/failure.dart';
import 'package:marketplace/core/services/services.dart';
import 'package:marketplace/core/usecase/usecase.dart';
import 'package:marketplace/src/domain/entities/user.dart';
import 'package:marketplace/src/domain/repository/user_repository.dart';

class ChangeDescriptionUseCase extends UseCase<User, String> {
  final String groupName;
  final int id;
  final String password;
  final String userName;

  ChangeDescriptionUseCase({
    required this.groupName,
    required this.id,
    required this.password,
    required this.userName,
  });

  @override
  Future<Either<Failure, User>> call(String newDescription) async {
    final UserRepository userRepository = services.get<UserRepository>();

    return userRepository.changeDescription(
      newdescription: newDescription,
      groupName: groupName,
      id: id,
      password: password,
      userName: userName,
    );
  }
}
