import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String userName;
  final String password;
  final String groupName;
  final String description;

  @override
  List<Object?> get props => [id];

  const User({
    required this.userName,
    required this.password,
    required this.groupName,
    required this.description,
    required this.id,
  });
}
