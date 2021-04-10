import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:twitter_clone/models/user_model.dart';
import 'package:twitter_clone/services/auth_service_base.dart';
import 'package:twitter_clone/services/providers/auth_provider.dart';

class AuthService extends AuthServiceBase {
  AuthService(AuthProvider provider) : super(provider);

  @override
  Future<AuthResponse> createWithEmailAndPassword(
      String email, String password, String displayName) async {
    try {
      final userCredential = await provider.auth
          .createUserWithEmailAndPassword(email: email, password: password);

      await userCredential.user!.updateProfile(displayName: displayName);

      return await signInWithEmailAndPassword(email, password);
    } on FirebaseAuthException catch (e) {
      return AuthResponse(message: getError(e.code));
    } catch (e) {
      print(e.toString());
      return AuthResponse(message: e.toString());
    }
  }

  @override
  Future<AuthResponse> signInOrCreateWithGoogle() async {
    try {
      final googleCredential = await GoogleSignIn().signIn();

      if (googleCredential == null) return AuthResponse(message: "cancel");

      final authentication = await googleCredential.authentication;

      final credential = GoogleAuthProvider.credential(
          accessToken: authentication.accessToken,
          idToken: authentication.idToken);

      final userCredential =
          await provider.auth.signInWithCredential(credential);

      final user = userCredential.user!;

      return AuthResponse(
          user: UserModel(
        displayName: user.displayName!,
        email: user.email!,
        uid: user.uid,
      ));
    } on FirebaseAuthException catch (e) {
      return AuthResponse(message: getError(e.code));
    } catch (e) {
      return AuthResponse(message: e.toString());
    }
  }

  @override
  Future<AuthResponse> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      final userCredential = await provider.auth
          .signInWithEmailAndPassword(email: email, password: password);

      final user = userCredential.user!;

      return AuthResponse(
          user: UserModel(
        displayName: user.displayName!,
        email: user.email!,
        uid: user.uid,
      ));
    } on FirebaseAuthException catch (e) {
      return AuthResponse(message: getError(e.code));
    } catch (e) {
      print(e.toString());
      return AuthResponse(message: e.toString());
    }
  }

  @override
  Future<void> signOut() async {
    await provider.auth.signOut();
  }

  @override
  Future<AuthResponse> tryAutoSignIn() async {
    try {
      if (provider.auth.currentUser != null) {
        final user = provider.auth.currentUser!;

        return AuthResponse(
          user: UserModel(
            displayName: user.displayName!,
            email: user.email!,
            uid: user.uid,
          ),
        );
      }

      return AuthResponse();
    } on FirebaseAuthException catch (e) {
      return AuthResponse(message: getError(e.code));
    } catch (e) {
      return AuthResponse(message: e.toString());
    }
  }

  String getError(String errorCode) {
    switch (errorCode) {
      case "email-already-in-use":
        return "The email is already in use.";
      case "invalid-email":
        return "Invalid email or password";
      case "operation-not-allowed":
        return "We cannot make this right now, please try again later";
      case "weak-password":
        return "The password is too weak, please fix it";
      default:
        return "We cannot make this right now, please try again later";
    }
  }
}
