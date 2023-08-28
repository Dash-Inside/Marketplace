import 'package:equatable/equatable.dart';

class Topic extends Equatable {
  final int id;
  final String data;
  final int likes;
  final int numComments;
  final Map<String, String> commentsText;

  @override
  List<Object?> get props => [id];

  const Topic({
    required this.numComments,
    required this.id,
    required this.data,
    required this.likes,
    required this.commentsText,
  });
}
