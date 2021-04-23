import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/splash.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            child: Container(
              color: Colors.purple.withOpacity(0.60),
            ),
          ),
        ),
        Positioned(
          top: 150,
          left: 0,
          right: 0,
          child: Column(
            children: [
              Text(
                'Tilo',
                style: TextStyle(
                    fontFamily: 'KiwiMaru',
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'BEST SHOPPING EXPERIENCE',
                style: TextStyle(
                    fontFamily: 'Nunito', fontSize: 17, color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/SignUpScreen');
                  },
                  style: TextButton.styleFrom(
                    side: BorderSide(width: 1, color: Colors.grey),
                    minimumSize: Size(155, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    primary: Colors.purple,
                    backgroundColor: Colors.white,
                  ),
                  child: Text(
                    "Let's Start",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'Nunito'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushNamed('/HomeScreen');
                  },
                  child: Text(
                    "Skip",
                    style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
