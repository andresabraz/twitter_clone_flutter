import 'package:firebase_auth/firebase_auth.dart';
import 'package:twitter_clone/services/providers/service_provider_base.dart';

class AuthProvider extends ServiceProviderBase {
  late FirebaseAuth auth;

  @override
  void init() {
    auth = FirebaseAuth.instance;
  }
}
