import 'package:twitter_clone/models/reply_model.dart';

import 'base_tweet_line_widget.dart';

class ReplyLineWidget extends BaseTweetLineWidget {
  ReplyLineWidget({required ReplyModel reply}) : super(asTweet: reply);
}
