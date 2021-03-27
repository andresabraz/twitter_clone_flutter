import 'package:flutter/material.dart';
import 'package:twitter_clone/models/profile_model.dart';
import 'package:twitter_clone/models/tweet_model.dart';
import 'package:twitter_clone/views/pages/search_page.dart';
import 'package:twitter_clone/views/resources/project_icons.dart';
import 'package:twitter_clone/views/resources/project_logos.dart';
import 'package:twitter_clone/views/routes.dart';
import 'package:twitter_clone/views/widgets/appbar_widget.dart';
import 'package:twitter_clone/views/widgets/bottom_navigation_bar_widget.dart';
import 'package:twitter_clone/views/widgets/tweet/tweet_list_widget.dart';

import 'notifications_page.dart';
import 'profile_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onTapNavigationBar(int index) {
    print('Tap navigation bar');
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onRetweet() {
    Navigator.of(context).pushNamed(Routes.reply);
  }

  void _onReply() {
    print('You like replay');
  }

  void _onLike() {
    print('You like it');
  }

  void _onTapCreateTweet() {
    Navigator.of(context).pushNamed(Routes.new_tweet);
  }

  Set<Widget>? _pageSimulation;
  bool _isReady = false;

  //TextEditingController _textController = TextEditingController();

  @override
  void didChangeDependencies() {
    _pageSimulation = <Widget>{
      TweetListWidget(
        tweets: [
          TweetModel(
            id: 1,
            createdAt: DateTime.now().subtract(Duration(days: 2)),
            content: "First tweet!",
            replyCount: 10,
            retweetCount: 4,
            likeCount: 3,
            profile: ProfileModel(
                name: "Leandro",
                nickname: "@leandro",
                picture: "https://i.redd.it/4zr7r2y5zy431.png"),
            didILike: false,
            didIRetweet: false,
          ),
          TweetModel(
            id: 2,
            createdAt: DateTime.now().subtract(Duration(days: 2)),
            content: "Second tweet!",
            replyCount: 9,
            retweetCount: 6,
            likeCount: 2,
            profile: ProfileModel(
                name: "Maria",
                nickname: "@maria",
                picture: "https://i.redd.it/4zr7r2y5zy431.png"),
            didILike: false,
            didIRetweet: false,
          ),
        ],
      ),
      SearchPage(),
      NotificationsPage(),
      ProfilePage(),
    };

    setState(() {
      _isReady = true;
    });

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: ProjectLogos.twitter,
        action: IconButton(
          icon: ProjectIcons.feature,
          onPressed: () {
            print('button pressed');
          },
        ),
      ),
      drawer: Drawer(child: Container()),
      floatingActionButton: FloatingActionButton(
        onPressed: _onTapCreateTweet,
        child: ProjectIcons.newTweet,
      ),
      body: _isReady
          ? Center(
              child: _pageSimulation!.elementAt(_selectedIndex),
            )
          : Container(),
      bottomNavigationBar: BottomNavigationBarWidget(
        onTapNavigationBar: _onTapNavigationBar,
        selectedIndex: _selectedIndex,
      ),
    );
  }
}
