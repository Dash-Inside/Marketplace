import 'package:dartz/dartz.dart';
import 'package:marketplace/core/failure/failure.dart';
import 'package:marketplace/core/services/services.dart';
import 'package:marketplace/src/data/datasourse/user_datasource.dart';
import 'package:marketplace/src/domain/entities/user.dart';
import 'package:marketplace/src/domain/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserDataSource userDataSource = services.get<UserDataSource>();
  static const String topicUrl = 'http://127.0.0.1:1337/api/topic-types';
  static const String userUrl = 'http://127.0.0.1:1337/api/user-types';

  @override
  Future<Either<Failure, User>> addNewUser({
    required int id,
    required String description,
    required String groupName,
    required String userName,
    required String password,
  }) async {
    try {
      await userDataSource.addUser(id, description, groupName, userName: userName, password: password);
      return right(User(userName: userName, password: password, groupName: groupName, description: description, id: id));
    } catch (e) {
      return left(const Failure(message: 'Failed to create user'));
    }
  }

  @override
  Future<Either<Failure, User>> changeDescription({
    required String newdescription,
    required String userName,
    required String password,
    required String groupName,
    required int id,
  }) async {
    final result = await changeDescription(
      newdescription: newdescription,
      userName: userName,
      password: password,
      groupName: groupName,
      id: id,
    );
    try {
      await userDataSource.changeDescription(newDescription: newdescription, userName: userName, password: password, groupName: groupName, id: id);

      final updatedUser = User(
        userName: userName,
        password: password,
        groupName: groupName,
        description: newdescription,
        id: id,
      );

      return right(updatedUser);
    } catch (e) {
      return left(const Failure(message: 'Failed to change description.'));
    }
  }

  @override
  Future<Either<Failure, User>> changeGroup({
    required String description,
    required String userName,
    required String password,
    required String newGroupName,
    required int id,
  }) async {
    final result = await changeGroup(
      description: description,
      userName: userName,
      password: password,
      newGroupName: newGroupName,
      id: id,
    );
    try {
      await userDataSource.changeGroup(
        description: description,
        userName: userName,
        password: password,
        newGroupName: newGroupName,
        id: id,
      );
      final updatedUser = User(
        userName: userName,
        password: password,
        groupName: newGroupName,
        description: description,
        id: id,
      );

      return right(updatedUser);
    } catch (e) {
      return left(const Failure(message: 'Failed to change group'));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteUser({required int id}) async {
    await userDataSource.deleteAccount(id: id);
    return right(unit);
  }
}
