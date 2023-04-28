import 'package:appwrite/models.dart';
import 'package:twitter_clone/core/core.dart';

abstract class IAuthAPI {
  FutureEither<User> signUp({required String email, required String password});
}

class AuthAPI implements IAuthAPI {
  final User _account;
  AuthAPI({required User account}) : _account = account;
  @override
  FutureEither<User> signUp({required String email, required String password}) {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}
