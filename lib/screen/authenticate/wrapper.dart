import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tilo/model/user_model.dart';
import 'package:tilo/screen/authenticate/authenticate.dart';
import 'package:tilo/screen/home/home.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    final _user = Provider.of<UserModel>(context);
    return (_user == null) ? Authenticate() : HomeScreen();
  }
}
