import 'package:twitter_clone/controllers/notification_controller.dart';
import 'package:twitter_clone/services/notification_service.dart';
import 'package:twitter_clone/services/providers/database_provider.dart';

class Di {

  late NotificationController notificationController;

  void createDi(){

    var databaseProvider = DatabaseProvider();

    databaseProvider.init();

    notificationController = NotificationController(NotificationService(databaseProvider));
  }
  
}