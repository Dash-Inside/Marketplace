part of 'home_bloc.dart';

sealed class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class PostHomeEvent extends HomeEvent {
  @override
  List<Object> get props => [];
  PostHomeEvent();
}

class TrendingHomeEvent extends HomeEvent {
  @override
  List<Object> get props => [];
  TrendingHomeEvent();
}

class LatetsHomeEvent extends HomeEvent {
  @override
  List<Object> get props => [];
  LatetsHomeEvent();
}

class LikeHomeEvent extends HomeEvent {
  @override
  List<Object> get props => [];
  LikeHomeEvent();
}

class CommentHomeEvent extends HomeEvent {
  @override
  List<Object> get props => [];
  CommentHomeEvent();
}

class AvatarHomeEvent extends HomeEvent {
  @override
  List<Object> get props => [];
  AvatarHomeEvent();
}

class SaveHomeEvent extends HomeEvent {
  final String group;
  final String description;
  @override
  List<Object> get props => [group, description];
  SaveHomeEvent({
    this.group = '',
    this.description = '',
  });
}

class DeleteHomeEvent extends HomeEvent {
  @override
  List<Object> get props => [];
  DeleteHomeEvent();
}

class PublishHomeEvent extends HomeEvent {
  final String text;
  @override
  List<Object> get props => [text];
  PublishHomeEvent({
    required this.text,
  });
}

class DiscardHomeEvent extends HomeEvent {
  @override
  List<Object> get props => [];
  DiscardHomeEvent();
}
