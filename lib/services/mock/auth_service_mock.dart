import 'package:twitter_clone/services/providers/auth_provider.dart';

import '../auth_service_base.dart';

class AuthServiceMock extends AuthServiceBase {
  AuthServiceMock(AuthProvider provider) : super(provider);

  @override
  Future<AuthResponse> createWithEmailAndPassword(
      String email, String password, String displayName) {
    // TODO: implement createWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<AuthResponse> signInOrCreateWithGoogle() {
    // TODO: implement signInOrCreateWithGoogle
    throw UnimplementedError();
  }

  @override
  Future<AuthResponse> signInWithEmailAndPassword(
      String email, String password) {
    // TODO: implement signInWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<AuthResponse> tryAutoSignIn() {
    // TODO: implement tryAutoSignIn
    throw UnimplementedError();
  }
}
