import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tilo/model/details_data_model.dart';
import 'package:tilo/provider/cart_provider.dart';

class Body extends StatefulWidget {
  final Product myItem;
  Body({this.myItem});

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    final itemProvider = Provider.of<CartProvider>(context);


    return (itemProvider.items.length != 0)
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView.builder(
              itemCount: itemProvider.items.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Dismissible(
                  key: Key('${itemProvider.items[index].code}'),
                  direction: DismissDirection.endToStart,
                  // onDismissed: (direction) => {
                  //   itemProvider.removeItem(itemProvider.items[index])
                  // },
                  background: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(
                      color: Colors.red[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Spacer(),
                        Icon(
                          Icons.delete,
                          color: Colors.grey[700],
                        ),
                      ],
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 88,
                        child: AspectRatio(
                          aspectRatio: 0.88,
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.network('https://resizing.flixster.com/2ubbDHZSk_6-Ffxoyf_dcNDRVWY=/506x652/v2/https://flxt.tmsimg.com/v9/AllPhotos/165127/165127_v9_bb.jpg'),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${itemProvider.items[index].name}',
                            style: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 18,
                              color: Colors.grey[600],
                            ),
                            maxLines: 2,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text.rich(
                            TextSpan(
                                text: "\$${itemProvider.items[index].whitePrice.price}",
                                style: TextStyle(
                                    color: Colors.purple,
                                    fontWeight: FontWeight.bold),
                               /* children: [
                                  TextSpan(
                                    text: '    x5',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],*/
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        : Center(
            child: Text("No Items Added"),
          );
  }
}

