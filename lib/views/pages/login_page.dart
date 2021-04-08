import 'package:flutter/material.dart';
import 'package:twitter_clone/config/app_params.dart';
import 'package:twitter_clone/views/resources/project_logos.dart';
import 'package:twitter_clone/views/resources/styles.dart';
import 'package:twitter_clone/views/widgets/button_widget.dart';
import 'package:twitter_clone/views/widgets/login_with_google_button_widget.dart';
import 'package:twitter_clone/views/widgets/outlined_button_widget.dart';
import 'package:twitter_clone/views/widgets/textbox_widget.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  Widget _buildHeader() {
    return Column(
      children: [
        ProjectLogos.appLogo,
        SizedBox(height: 5),
        Text(AppParams.appName, style: Styles.h6),
        Text('Flutter & Dart app development course',
            style: Styles.subtitle2Gray),
      ],
    );
  }

  Widget _buildFields() {
    return Column(
      children: [
        TextboxWidget(controller: _emailController, hintText: "Email"),
        TextboxWidget(controller: _passwordController, hintText: "Password"),
      ],
    );
  }

  Widget _buildCreateUserOrLoginButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        OutlinedButtonWidget(
            text: "Create my account", onTap: _onTapCreateAccount),
        ButtonWidget(text: 'Login', onTap: _onTapLogin),
      ],
    );
  }

  void _onTapCreateAccount() {}

  void _onTapLogin() {}

  void _onTapLoginWithGoogle() {}

  @override
  build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Container(
            height: MediaQuery.of(context).size.height - 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildHeader(),
                _buildFields(),
                _buildCreateUserOrLoginButtons(),
                Text("Or"),
                LoginWithGoogleButtonWidget(
                  onTap: _onTapLoginWithGoogle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
