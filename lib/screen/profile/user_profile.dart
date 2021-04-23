import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';

class UserProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SingleChildScrollView(
            child: Container(
              height: 280,
              child: Stack(
                children: [
                  ClipPath(
                    clipper: MyCustomClipper(),
                    child: Container(
                      height: 250.00,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://mocah.org/uploads/posts/515287-4K-Pink-Girly.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 90,
                        ),
                        CircularProfileAvatar(
                          'https://resizing.flixster.com/2ubbDHZSk_6-Ffxoyf_dcNDRVWY=/506x652/v2/https://flxt.tmsimg.com/v9/AllPhotos/165127/165127_v9_bb.jpg',
                          borderWidth: 3.0,
                          radius: 70.0,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Jason Statham',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            color: Colors.purple,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SafeArea(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            }),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children:[
              Card(
                child: ListTile(
                  leading: Text(
                    'Username: ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Text(
                    'jason54522',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(500, 117, 117, 117),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Text(
                    'Phone: ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Text(
                    '+201025566233',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(500, 117, 117, 117),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Text(
                    'Email Address: ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Text(
                    'name@mail.com',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(500, 117, 117, 117),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Text(
                    'Shipping Address: ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Text(
                    'Alexandria',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(500, 117, 117, 117),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Text(
                    'Edit Profile: ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: (){
                      Navigator.of(context).pushNamed('/EditProfileScreen');

                    },
                    icon:Icon(
                      Icons.edit,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height - 150);
    path.lineTo(0, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
