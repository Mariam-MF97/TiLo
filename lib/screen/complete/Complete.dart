import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/services.dart';

class CompleteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/done.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            child: Container(
              color: Colors.purple.withOpacity(0.60),
            ),
          ),
        ),
        Positioned(
          top: 200,
          left: 0,
          right: 0,
          child: Column(
            children: [
              Text(
                'Congratulations!',
                style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "You've Completed your Order",
                style: TextStyle(
                    fontFamily: 'Nunito', fontSize: 25, color: Colors.white),
              ),
              SizedBox(
                height: 30,
              ),
              Icon(
                EvaIcons.checkmarkCircle2Outline,
                color: Colors.greenAccent,
                size: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: TextButton(
                  onPressed: () {
                    //Navigator.of(context).pushNamed('/HomeScreen');
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        '/HomeScreen', (Route<dynamic> route) => false);
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
                    "Back to Home",
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
                  onTap: () {
                    SystemNavigator.pop();
                  },
                  child: Text(
                    "Exit",
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
