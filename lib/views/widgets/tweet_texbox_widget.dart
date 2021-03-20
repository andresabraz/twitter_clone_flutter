import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:twitter_clone/views/resources/styles.dart';

class TweetTextboxWidget extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final int maxLength;
  TweetTextboxWidget({
    required this.controller,
    required this.hintText,
    required this.maxLength,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: 10,
      minLines: 1,
      controller: controller,
      style: Styles.h6,
      inputFormatters: [LengthLimitingTextInputFormatter(maxLength)],
      decoration: InputDecoration(
        hintText: hintText,
        border: InputBorder.none,
      ),
    );
  }
}
