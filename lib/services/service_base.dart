import 'package:twitter_clone/services/providers/service_provider_base.dart';

abstract class ServiceBase<Provider extends ServiceProviderBase> {
  Provider provider;
  ServiceBase(this.provider);
}
