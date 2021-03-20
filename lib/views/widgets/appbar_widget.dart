import 'package:flutter/material.dart';

class AppBarWidget extends AppBar {
  AppBarWidget({
    Widget? title,
    Widget? action,
  }) : super(
          title: title,
          actions: action != null ? [action] : null,
          elevation: .80,
          brightness: Brightness.light,
          centerTitle: true,
        );
}
