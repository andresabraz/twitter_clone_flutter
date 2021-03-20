import 'package:twitter_clone/models/notification_model.dart';
import 'package:twitter_clone/services/providers/database_provider_base.dart';

import 'notification_service_base.dart';

class NotificationService extends NotificationServiceBase {
  // late DatabaseProvider databaseProvider;

  NotificationService(DatabaseProviderBase databaseProvider)
      : super(databaseProvider) {
    databaseProvider = databaseProvider;
  }

  @override
  void createNotification() {
    // databaseProvider.firebaseFirestore.add("lkjdsflksjd");
  }

  @override
  Future<List<NotificationModel>> getNotifications() async {
    // await databaseProvider.firebaseFirestore.get("oskdflkjlsd");
    return List.empty();
  }
}
