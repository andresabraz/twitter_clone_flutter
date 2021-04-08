import 'package:flutter/widgets.dart';
import 'package:twitter_clone/views/pages/login_page.dart';
import 'package:twitter_clone/views/pages/new_tweet_page.dart';
import 'package:twitter_clone/views/pages/reply_page.dart';
import 'package:twitter_clone/views/pages/selected_tweet_page.dart';

import 'pages/home_page.dart';

class Routes {
  static const String home = '/home';
  static const String reply = '/reply';
  static const String new_tweet = '/new_tweet';
  static const String selected_tweet = '/selected_tweet';
  static const String login = '/login';

  static final routes = <String, WidgetBuilder>{
    home: (BuildContext context) => HomePage(),
    reply: (BuildContext context) => ReplyPage(),
    new_tweet: (BuildContext context) => NewTweetPage(),
    selected_tweet: (BuildContext context) => SelectedTweetPage(),
    login: (BuildContext context) => LoginPage()
  };
}
