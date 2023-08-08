// ignore_for_file: depend_on_referenced_packages

import 'package:meal_monkey_app/meal_monkey_app/data/repositories/user_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class EmailUser implements UserRepository<AuthCredential> {
  final String email;
  final String password;

  EmailUser({
    required this.email,
    required this.password,
  });

  @override
  Future<AuthCredential> signUp() async {
      final signUpAuth = (
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email,
          password: password,
        ),
      ) as AuthCredential;
      return signUpAuth;
  }

  @override
  Future<AuthCredential> login() async {
    final loginAuth = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    ) as AuthCredential;
    return loginAuth;
  }

  @override
  Future<void> logOut() async {
    await FirebaseAuth.instance.signOut();
  }

}
