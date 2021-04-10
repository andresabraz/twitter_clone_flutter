import 'package:twitter_clone/services/auth_service_base.dart';

import 'base_controller.dart';

class AuthController extends BaseController<AuthServiceBase> {
  AuthController(AuthServiceBase service) : super(service: service);
  void createUserWithEmailAndPassword(
      String email, String password, String displayName) async {
    final authResponse =
        await service.createWithEmailAndPassword(email, password, displayName);
    if (authResponse.success) {
      //create the user on the database
    }
    //return a message for the user
  }

  void signInOrCreateWithGoogle() {
    service.signInOrCreateWithGoogle();
  }

  void signInWithEmailAndPassword(String email, String password) {
    service.signInWithEmailAndPassword(email, password);
  }
}
