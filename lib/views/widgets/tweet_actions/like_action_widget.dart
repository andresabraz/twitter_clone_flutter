import 'package:twitter_clone/views/resources/project_icons.dart';
import 'package:twitter_clone/views/widgets/tweet_actions/base_tweet_action_widget.dart';

class LikeActionWidget extends BaseTweetActionWidget {
  final int likeCount;
  final Function() onLike;

  LikeActionWidget({required this.likeCount, required this.onLike})
      : super(icon: ProjectIcons.like, actionCount: likeCount, onTap: onLike);
}
