import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:tilo/config/Palette.dart';
import 'package:tilo/ui_builder/ui_builders.dart';

class LoginScreen extends StatefulWidget {

  final Function toggleView;

  LoginScreen({this.toggleView});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  String email= '';
  String password= '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/login.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Container(
                padding: EdgeInsets.only(top: 100, left: 20),
                color: Colors.purple.withOpacity(0.60),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Welcome Back to',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          letterSpacing: 2,
                          fontFamily: 'Nunito',
                        ),
                        children: [
                          TextSpan(
                            text: ' Tilo,',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 35,
                                fontFamily: 'KiwiMaru'),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Log in for best shopping',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Nunito',
                        fontSize: 20,
                        letterSpacing: 2,
                        //fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 230,
            child: Container(
              padding: EdgeInsets.all(20),
              height: 250,
              width: MediaQuery.of(context).size.width - 40,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 15,
                      spreadRadius: 5)
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'LOGIN',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        buildTextField(Icons.mail, 'Email', false, true),
                        buildTextField(Icons.lock, 'Password', true, false),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 435,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                height: 80,
                width: 80,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushNamed('/HomeScreen');
                  },
                  child: Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.purple, Colors.purpleAccent],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 1))
                      ],
                    ),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height - 150,
            right: 0,
            left: 0,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "don't have an account yet? ",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Nunito',
                          color: Colors.grey[600]),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed('/SignUpScreen');
                      },
                      child: Text(
                        'SIGNUP',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.bold,
                            color: Colors.purple),
                      ),
                    ),
                  ],
                ),
                Text(
                  'Or Login with',
                  style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 18,
                      color: Colors.grey[600]),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20, left: 20, top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildTextButton(MaterialCommunityIcons.facebook,
                          'facebook', Colors.indigo),
                      buildTextButton(MaterialCommunityIcons.google_plus,
                          'Google', Colors.redAccent)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
