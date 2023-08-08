part of 'auth_bloc.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class Authinticated extends AuthState {}

class UnAuthinticated extends AuthState {}

class AuthError extends AuthState {
  final String error;

  AuthError(this.error);
}

class LoadingUserData extends AuthState {}

class LoadedUserData extends AuthState {}

class ErrorUserData extends AuthState {
  final String error;

  ErrorUserData({required this.error});
}
