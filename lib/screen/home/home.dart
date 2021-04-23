import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tilo/provider/data_provider.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  GlobalKey bottomNavigationKey = GlobalKey();

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Cart',
      style: optionStyle,
    ),
    Text(
      'Index 3: Profile',
      style: optionStyle,
    ),
  ];

  /*void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Image.asset(
          'assets/logo1.jpg',
          height: 40,
          width: 80,
        ),

        /*Text(
            "HOME",
            style: TextStyle(
                color: Colors.grey[600],
                fontFamily: "Nunito",
                fontWeight: FontWeight.bold),
          ),*/
      ),

      bottomNavigationBar: FancyBottomNavigation(
        circleColor: Colors.purple,
        inactiveIconColor: Colors.purple,
        tabs: [
          TabData(iconData: Icons.home, title: "Home", onclick: (){}),
          TabData(iconData: Icons.favorite, title: "Wishlist", onclick: (){
            Navigator.of(context).pushNamed('/WishListScreen');
          }),
          TabData(iconData: Icons.shopping_cart, title: "Cart",onclick: (){
            Navigator.of(context).pushNamed('/CartScreen');

          }),
          TabData(iconData: EvaIcons.person, title: "Profile",onclick: (){
            Navigator.of(context).pushNamed('/ProfileScreen');

          })
        ],
        //initialSelection: 1,
        //key: bottomNavigationKey,
        onTabChangedListener: (position) {
          setState(() {
            selectedIndex = position;
          });
        },
      ),
      // drawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: <Widget>[
      //       DrawerHeader(
      //         child: CircleAvatar(
      //           backgroundColor: Colors.indigo[100],
      //           child: Text('Hello'),
      //         ),
      //         decoration: BoxDecoration(
      //           color: Colors.indigo,
      //         ),
      //       ),
      //       ListTile(
      //         title: Text('Cart'),
      //         leading: Icon(Icons.card_travel_rounded),
      //       ),
      //       ListTile(
      //         title: Text('Favorite'),
      //         leading: Icon(Icons.favorite),
      //       ),
      //       ListTile(
      //           title: Text('Sign out'),
      //           leading: Icon(Icons.exit_to_app_outlined),
      //           onTap: () {})
      //     ],
      //   ),
      // ),
      // body:         child: _widgetOptions.elementAt(_selectedIndex),

      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Best Offers',
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                        color: Colors.purple)),
              ],
            ),
          ),
          CarouselSlider(
            items: [
              //1st Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/slider1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //2nd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/slider2.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //3rd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/slider3.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/slider4.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
            //Slider Container properties
            options: CarouselOptions(
              height: 220.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/menScreen');
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Men Section',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                          color: Colors.purple)),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 3,
                margin: EdgeInsets.all(8),
                height: 100,
                child: Image.asset(
                  "assets/m1.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 3,
                margin: EdgeInsets.all(8),
                height: 100,
                child: Image.asset(
                  "assets/m2.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/womenScreen');
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Women Section',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                          color: Colors.purple)),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 3,
                margin: EdgeInsets.all(8),
                height: 100,
                child: Image.asset(
                  "assets/sg1.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 3,
                margin: EdgeInsets.all(8),
                height: 100,
                child: Image.asset(
                  "assets/sg2.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/babyScreen');
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Babies Section',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                          color: Colors.purple)),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 3,
                margin: EdgeInsets.all(8),
                height: 100,
                child: Image.asset(
                  "assets/sb1.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 3,
                margin: EdgeInsets.all(8),
                height: 100,
                child: Image.asset(
                  "assets/sb2.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ],
      ),

      /* bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel),
            label: 'Cart',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.favorite),
          //   label: 'Wish List',
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.indigo,
        onTap: _onItemTapped,
      ),*/
    );
  }
}
