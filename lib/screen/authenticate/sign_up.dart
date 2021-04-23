import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:tilo/auth/authService.dart';
import 'package:tilo/config/Palette.dart';
import 'package:tilo/ui_builder/ui_builders.dart';

class SignUpScreen extends StatefulWidget {
  final Function toggleView;

  SignUpScreen({this.toggleView});

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String _name = '';
  String _email = '';
  String _password = '';
  final AuthService _auth = AuthService();

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
                  image: AssetImage('assets/shopping.jpg'),
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
                        text: 'Welcome to',
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
                      'Signup to start',
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
            top: 200,
            child: Container(
              padding: EdgeInsets.all(20),
              height: 290,
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
                    'SIGNUP',
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
                        Padding(
                          padding: const EdgeInsets.only(bottom: 9.0),
                          child: TextFormField(
                            onChanged: (val) {
                              setState(() {
                                _name = val;
                              });
                            },
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Colors.purple,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.purple),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(40)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.purple),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(40)),
                                ),
                                contentPadding: EdgeInsets.all(10),
                                hintText: "Full Name",
                                hintStyle: TextStyle(
                                    fontFamily: 'Nunito', fontSize: 20)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 9.0),
                          child: TextFormField(
                            onChanged: (val) {
                              setState(() {
                                _email = val;
                              });
                            },
                            autovalidate: true,
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.mail,
                                  color: Colors.purple,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.purple),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(40)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.purple),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(40)),
                                ),
                                contentPadding: EdgeInsets.all(10),
                                hintText: "E - Mail",
                                hintStyle: TextStyle(
                                    fontFamily: 'Nunito', fontSize: 20)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 9.0),
                          child: TextFormField(
                            onChanged: (val) {
                              setState(() {
                                _password = val;
                              });
                            },
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Colors.purple,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.purple),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(40)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.purple),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(40)),
                                ),
                                contentPadding: EdgeInsets.all(10),
                                hintText: "Password",
                                hintStyle: TextStyle(
                                    fontFamily: 'Nunito', fontSize: 20)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 450,
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
                  onTap: () async {

                    dynamic result = _auth.registerWithEmailAndPassword(_email, _password,_name);
                    if(result!=null){
                      Navigator.of(context).pushNamed('/HomeScreen');
                    }

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
            top: MediaQuery.of(context).size.height - 140,
            right: 0,
            left: 0,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account? ',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Nunito',
                          color: Colors.grey[600]),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/LoginScreen');
                      },
                      child: Text(
                        'LOGIN',
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
                  'Or Signup with',
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
