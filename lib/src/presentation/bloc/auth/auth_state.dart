part of 'auth_bloc.dart';

sealed class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

final class NullAythState extends AuthState {}

final class DataAuthState extends AuthState {}
