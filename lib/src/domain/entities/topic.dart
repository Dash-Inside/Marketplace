import 'package:equatable/equatable.dart';

class Topic extends Equatable {
  final int id;
  final String data;
  final int likes;

  @override
  List<Object?> get props => [id];

  const Topic({
    required this.id,
    required this.data,
    required this.likes,
  });
}
