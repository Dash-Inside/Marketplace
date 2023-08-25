import 'package:equatable/equatable.dart';

class Comments extends Equatable {
  final String userName;
  final String commentText;

  @override
  List<Object?> get props => [userName];

  const Comments(
    this.userName,
    this.commentText,
  );
}
