import 'package:flutter/material.dart';
import 'package:twitter_clone/views/resources/project_colors.dart';
import 'package:twitter_clone/views/resources/styles.dart';
import 'package:twitter_clone/views/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Twitter Clone',
      theme: ThemeData(
        primaryColor: ProjectColors.activeBlue,
        primaryIconTheme: IconThemeData(color: ProjectColors.activeBlue),
        appBarTheme: AppBarTheme(color: ProjectColors.white),
        textTheme:
            TextTheme(bodyText2: Styles.body2, subtitle1: Styles.subtitle1),
        typography: Typography.material2018(),
      ),
      routes: Routes.routes,
      initialRoute: Routes.home,
    );
  }
}
