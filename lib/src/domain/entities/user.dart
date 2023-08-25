import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String userName;
  final String password;
  final String groupName;
  final String description;

  @override
  List<Object?> get props => [id];

  const User(
    this.userName,
    this.password,
    this.groupName,
    this.description,
    this.id,
  );
}
