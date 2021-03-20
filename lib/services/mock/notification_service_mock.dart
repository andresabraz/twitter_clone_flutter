import 'package:twitter_clone/models/notification_model.dart';
import 'package:twitter_clone/services/providers/database_provider_base.dart';

import '../notification_service_base.dart';

class NotificationServiceMock extends NotificationServiceBase {
  
  NotificationServiceMock(DatabaseProviderBase databaseProvider) : super(databaseProvider);

  @override
  void createNotification() {
    //nothing its just to test the flow on my app.
  }

  @override
  Future<List<NotificationModel>> getNotifications() async {
    return List.empty();
  }
  
}