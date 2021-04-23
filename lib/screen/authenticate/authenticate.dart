import 'package:flutter/material.dart';
import 'package:tilo/screen/authenticate/log_in.dart';
import 'package:tilo/screen/authenticate/sign_up.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}
class _AuthenticateState extends State<Authenticate> {
  bool showSignIn = false;
  void toggleView() {
    setState(() => showSignIn = !showSignIn);
  }
  @override
  Widget build(BuildContext context) {
    return showSignIn ? LoginScreen(toggleView: toggleView) : SignUpScreen(
        toggleView: toggleView);
  }
}