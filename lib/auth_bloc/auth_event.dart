part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class SignUpRequest extends AuthEvent {
  final String email;
  final String password;

  SignUpRequest(
    this.email,
    this.password,
  );
}

class SignInRequest extends AuthEvent {
  final String email;
  final String password;

  SignInRequest(
    this.email,
    this.password,
  );
}

class GoogleSignInRequest extends AuthEvent {}

class SignOutRequest extends AuthEvent {}

class LoadUserData extends AuthEvent {}

class AddUserData extends AuthEvent {
  final UserDataModel userDataModel;

  AddUserData(this.userDataModel);
}

class UpdateUserData extends AuthEvent {
  final UserDataModel userDataModel;

  UpdateUserData(this.userDataModel);
}

class DeleteUserData extends AuthEvent {
  final String uID;

  DeleteUserData(this.uID);
}
