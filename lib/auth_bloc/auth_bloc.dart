// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:meal_monkey_app/meal_monkey_app/data/models/user_data/user_data_model.dart';
import 'package:meal_monkey_app/meal_monkey_app/data/repositories/auth_repository.dart';
import 'package:meta/meta.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../meal_monkey_app/data/repositories/firestore_repository.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  // final FirestoreRepository firestoreRepository;

  AuthBloc(
    this.authRepository,
  ) : super(AuthInitial()) {
    on<SignInRequest>((event, emit) async {
      emit(AuthLoading());
      try {
        await authRepository.signIn(
            email: event.email, password: event.password);
        emit(Authinticated());
      } catch (e) {
        emit(AuthError(e.toString()));
        emit(UnAuthinticated());
      }
    });
    on<SignUpRequest>((event, emit) async {
      emit(AuthLoading());
      try {
        await authRepository.signUp(
            email: event.email, password: event.password);

        emit(Authinticated());
      } catch (e) {
        emit(AuthError(e.toString()));
        emit(UnAuthinticated());
      }
    });
    on<GoogleSignInRequest>((event, emit) async {
      emit(AuthLoading());
      try {
        await authRepository.signInWithGoogle();
        emit(Authinticated());
      } catch (e) {
        emit(AuthError(e.toString()));
        emit(UnAuthinticated());
      }
    });
    on<SignOutRequest>((event, emit) async {
      emit(AuthLoading());
      await authRepository.signOut();
      emit(UnAuthinticated());
    });
    void createUser({
      required String uID,
      required String name,
      required String email,
      required String mobileNo,
      required String address,
    }) async {
      UserDataModel model = UserDataModel(
        uID: uID,
        name: name,
        email: email,
        address: address,
        mobileNo: mobileNo,
      );
      return users.doc(uID).set(model.toJson()).then((value) {
        emit(LoadedUserData());
      }).catchError((error) {
        emit(ErrorUserData(error: error.toString()));
      });
    }
  }
}
