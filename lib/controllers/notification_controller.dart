import 'package:twitter_clone/models/notification_model.dart';
import 'package:twitter_clone/services/notification_service_base.dart';

class NotificationController {
  
  NotificationServiceBase service;
  NotificationController(this.service);

  void createNotification(){
    service.createNotification();
  }

  Future<List<NotificationModel>> getNotifications() async {
    var notifications = await service.getNotifications();

    return notifications;
  }

}