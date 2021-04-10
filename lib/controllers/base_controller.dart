import 'package:twitter_clone/services/service_base.dart';

abstract class BaseController<Service extends ServiceBase> {
  final Service service;
  BaseController({required this.service});


}