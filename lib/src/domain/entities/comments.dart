import 'package:equatable/equatable.dart';

class Comments extends Equatable {
  final String userName;
  final String commentText;
  final String id;

  @override
  List<Object?> get props => [userName];

  const Comments({
    required this.userName,
    required this.commentText,
    required this.id,
  });
}
