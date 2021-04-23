import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GiftScreen extends StatefulWidget {
  @override
  _GiftScreenState createState() => _GiftScreenState();
}

class _GiftScreenState extends State<GiftScreen> {
  bool tappedGestureDetector1 = false;
  bool tappedGestureDetector2 = false;
  bool tappedGestureDetector3 = false;
  bool tappedGestureDetector4 = false;
  bool tappedGestureDetector5 = false;
  bool tappedGestureDetector6 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "GIFTS",
          style: TextStyle(
              color: Colors.grey[600],
              fontFamily: "Nunito",
              fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.purple),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Choose Gift Cover: ',
                  style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 20,
                      color: Colors.purple,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 270,
                  child: Expanded(
                    flex: 1,
                    child: GridView.count(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      children: [
                        GestureDetector(
                          child: Container(
                              decoration: BoxDecoration(
                                border: tappedGestureDetector1 == true
                                    ? Border.all(width: 5, color: Colors.purple)
                                    : null,
                              ),
                              child: Image.asset('assets/Gift/g1.jpg')),
                          onTap: () {
                            setState(() {
                              tappedGestureDetector1 = !tappedGestureDetector1;
                              tappedGestureDetector2 = false;
                              tappedGestureDetector3 = false;
                              tappedGestureDetector4 = false;
                              tappedGestureDetector5 = false;
                              tappedGestureDetector6 = false;
                            });
                          },
                        ),
                        GestureDetector(
                          child: Container(
                              decoration: BoxDecoration(
                                border: tappedGestureDetector2 == true
                                    ? Border.all(width: 5, color: Colors.purple)
                                    : null,
                              ),
                              child: Image.asset('assets/Gift/g2.jpg')),
                          onTap: () {
                            setState(() {
                              tappedGestureDetector2 = !tappedGestureDetector2;
                              tappedGestureDetector1 = false;
                              tappedGestureDetector3 = false;
                              tappedGestureDetector4 = false;
                              tappedGestureDetector5 = false;
                              tappedGestureDetector6 = false;
                            });
                          },
                        ),
                        GestureDetector(
                          child: Container(
                              decoration: BoxDecoration(
                                border: tappedGestureDetector3 == true
                                    ? Border.all(width: 5, color: Colors.purple)
                                    : null,
                              ),
                              child: Image.asset('assets/Gift/g3.jpg')),
                          onTap: () {
                            setState(() {
                              tappedGestureDetector3 = !tappedGestureDetector3;
                              tappedGestureDetector2 = false;
                              tappedGestureDetector1 = false;
                              tappedGestureDetector4 = false;
                              tappedGestureDetector5 = false;
                              tappedGestureDetector6 = false;
                            });
                          },
                        ),
                        GestureDetector(
                          child: Container(
                              decoration: BoxDecoration(
                                border: tappedGestureDetector4 == true
                                    ? Border.all(width: 5, color: Colors.purple)
                                    : null,
                              ),
                              child: Image.asset('assets/Gift/g4.jpg')),
                          onTap: () {
                            setState(() {
                              tappedGestureDetector4 = !tappedGestureDetector4;
                              tappedGestureDetector2 = false;
                              tappedGestureDetector3 = false;
                              tappedGestureDetector1 = false;
                              tappedGestureDetector5 = false;
                              tappedGestureDetector6 = false;
                            });
                          },
                        ),
                        GestureDetector(
                          child: Container(
                              decoration: BoxDecoration(
                                border: tappedGestureDetector5 == true
                                    ? Border.all(width: 5, color: Colors.purple)
                                    : null,
                              ),
                              child: Image.asset('assets/Gift/g5.jpg')),
                          onTap: () {
                            setState(() {
                              tappedGestureDetector5 = !tappedGestureDetector5;
                              tappedGestureDetector2 = false;
                              tappedGestureDetector3 = false;
                              tappedGestureDetector4 = false;
                              tappedGestureDetector1 = false;
                              tappedGestureDetector6 = false;
                            });
                          },
                        ),
                        GestureDetector(
                          child: Container(
                              decoration: BoxDecoration(
                                border: tappedGestureDetector6 == true
                                    ? Border.all(width: 5, color: Colors.purple)
                                    : null,
                              ),
                              child: Image.asset('assets/Gift/g6.jpg')),
                          onTap: () {
                            setState(() {
                              tappedGestureDetector6 = !tappedGestureDetector6;
                              tappedGestureDetector2 = false;
                              tappedGestureDetector3 = false;
                              tappedGestureDetector4 = false;
                              tappedGestureDetector5 = false;
                              tappedGestureDetector1 = false;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  'Card wish: ',
                  style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 20,
                      color: Colors.purple,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                TextField(
                  maxLines: 2,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                    ),
                    contentPadding: EdgeInsets.all(15),
                    hintText: 'Enter your wish',
                    hintStyle: TextStyle(fontFamily: 'Nunito', fontSize: 20),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Receiver's Address: ",
                  style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 20,
                      color: Colors.purple,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                      borderRadius: BorderRadius.all(
                        Radius.circular(40),
                      ),
                    ),
                    contentPadding: EdgeInsets.all(10),
                    hintText: "Enter Address ...",
                    hintStyle: TextStyle(fontFamily: 'Nunito', fontSize: 20),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: ElevatedButton(
                    child: Text("Move to Cart".toUpperCase(),
                        style: TextStyle(fontSize: 14)),
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.purple),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                          side: BorderSide(color: Colors.purple),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/CartScreen');
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
