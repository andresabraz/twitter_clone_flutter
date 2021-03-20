import 'package:flutter/material.dart';

import 'button_widget.dart';

class AppBarButtonWidget extends StatelessWidget {
  final String text;
  final Function() onTap;

  AppBarButtonWidget({
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 10,
        bottom: 10,
        right: 20,
      ),
      child: ButtonWidget(
        text: text,
        onTap: onTap,
      ),
    );
  }
}
