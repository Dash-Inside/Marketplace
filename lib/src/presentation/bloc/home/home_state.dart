part of 'home_bloc.dart';

sealed class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

final class LoadingHomeState extends HomeState {}

final class MainHomeState extends HomeState {}

final class DialogHomeState extends HomeState {}

final class PostHomeState extends HomeState {}
