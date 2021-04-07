import 'package:twitter_clone/models/profile_model.dart';

abstract class AsTweetModelBase {
  String id;
  DateTime createdAt;
  String content;
  ProfileModel profile;

  AsTweetModelBase({
    required this.id,
    required this.createdAt,
    required this.content,
    required this.profile,
  });

  String get creationTimeAgo {
    var now = DateTime.now();
    var difference = createdAt.difference(now);

    if (difference.inDays == 0) {
      if (difference.inHours == 0) {
        if (difference.inMinutes == 0) {
          return (difference.inSeconds * -1).toString() + "s";
        }
        return (difference.inMinutes * -1).toString() + "m";
      }
      return (difference.inHours * -1).toString() + "h";
    }
    return (difference.inDays * -1).toString() + "d";
  }
}
