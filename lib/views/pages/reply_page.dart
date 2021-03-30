import 'package:flutter/material.dart';
import 'package:twitter_clone/views/widgets/appbar_widget.dart';
import 'package:twitter_clone/views/widgets/appbar_button_widget.dart';
import 'package:twitter_clone/views/widgets/replying_widget.dart';

class ReplyPage extends StatefulWidget {
  @override
  _ReplyPageState createState() => _ReplyPageState();
}

class _ReplyPageState extends State<ReplyPage> {
  final _textController = TextEditingController();

  void _onReply() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        action: AppBarButtonWidget(
          onTap: _onReply,
          text: "Reply",
        ),
      ),
      body: ReplyingWidget(
        profilePictureUrl: 'https://i.redd.it/4zr7r2y5zy431.png',
        replyingToProfileNickname: '@maxjacobson',
        textController: _textController,
      ),
    );
  }
}
