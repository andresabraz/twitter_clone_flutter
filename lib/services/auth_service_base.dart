import 'package:twitter_clone/models/user_model.dart';
import 'package:twitter_clone/services/providers/auth_provider.dart';
import 'package:twitter_clone/services/service_base.dart';

abstract class AuthServiceBase extends ServiceBase<AuthProvider> {
  AuthServiceBase(AuthProvider provider) : super(provider);

  Future<AuthResponse> createWithEmailAndPassword(
      String email, String password, String displayName);
  Future<AuthResponse> signInWithEmailAndPassword(
      String email, String password);
  Future<AuthResponse> signInOrCreateWithGoogle();
  Future<void> signOut();
  Future<AuthResponse> tryAutoSignIn();
}

class AuthResponse {
  UserModel? user;
  bool get success => user != null;
  String? message;

  AuthResponse({this.user, this.message});
}
