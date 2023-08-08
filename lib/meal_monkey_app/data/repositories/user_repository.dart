
abstract class UserRepository<T>{
  Future<T> signUp();
  Future<T> login();
  Future<void> logOut();
}