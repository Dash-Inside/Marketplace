import 'package:dartz/dartz.dart';
import 'package:marketplace/core/failure/failure.dart';
import 'package:marketplace/core/services/services.dart';
import 'package:marketplace/core/usecase/usecase.dart';
import 'package:marketplace/src/domain/repository/user_repository.dart';

class DeleteUserUseCase extends UseCase<Unit, int> {
  @override
  Future<Either<Failure, Unit>> call(int p) {
    final UserRepository userRepository = services.get<UserRepository>();

    return userRepository.deleteUser(
      id: p,
    );
  }
}
