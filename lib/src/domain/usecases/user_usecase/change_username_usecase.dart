import 'package:dartz/dartz.dart';
import 'package:marketplace/core/failure/failure.dart';
import 'package:marketplace/core/services/services.dart';
import 'package:marketplace/core/usecase/usecase.dart';
import 'package:marketplace/src/domain/entities/user.dart';
import 'package:marketplace/src/domain/repository/user_repository.dart';

class ChangeUserNameUseCase extends UseCase<User, String> {
  @override
  Future<Either<Failure, User>> call(String p) {
    final UserRepository userRepository = services.get<UserRepository>();

    return userRepository.changeUserName(
      userName: p,
    );
  }
}
