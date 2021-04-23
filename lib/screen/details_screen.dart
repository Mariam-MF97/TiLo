import 'dart:ui';
import 'package:like_button/like_button.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:tilo/model/data_model.dart';
import 'package:flutter/material.dart';
import 'package:tilo/provider/cart_provider.dart';
import 'package:tilo/provider/details_data_provider.dart';
import 'package:tilo/screen/cart/cart_screen.dart';
import 'package:toast/toast.dart';

class DetailsScreen extends StatefulWidget {
  final Result item;

  DetailsScreen({this.item});

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final itemProvider = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          '${widget.item.name}',
          style: TextStyle(
              color: Colors.grey[600],
              fontFamily: "Nunito",
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(
              EvaIcons.shoppingCart,
              color: Colors.purple,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CartScreen()));
            },
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.purple),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          //margin: EdgeInsets.all(16),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(color: Colors.grey[100]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                child: Image.network("${widget.item.images[0].url}",
                    height: 350, width: 250),
                borderRadius: BorderRadius.circular(80.0),
              ),
              ChangeNotifierProvider<DetailsDataProvider>(
                  create: (_) =>
                      DetailsDataProvider(widget.item.defaultArticle.code),
                  child: Consumer<DetailsDataProvider>(
                    builder: (ctx, _data, _) {
                      return (_data.dataItem != null)
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'Description: ',
                                    style: TextStyle(
                                        color: Colors.purple,
                                        fontFamily: "Nunito",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25),
                                  ),
                                  Text(
                                    "${_data.dataItem.description}",
                                    style: TextStyle(
                                        fontFamily: 'Nunito',
                                        fontSize: 20,
                                        color: Colors.grey[800]),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'Category: ',
                                    style: TextStyle(
                                        color: Colors.purple,
                                        fontFamily: "Nunito",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25),
                                  ),
                                  Text(
                                    "${_data.dataItem.mainCategory.name}",
                                    style: TextStyle(
                                      fontFamily: 'Nunito',
                                      fontSize: 20,
                                      color: Colors.grey[800],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'Price: ',
                                    style: TextStyle(
                                        color: Colors.purple,
                                        fontFamily: "Nunito",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25),
                                  ),
                                  Text(
                                    "${_data.dataItem.whitePrice.price} EGP",
                                    style: TextStyle(
                                      fontFamily: 'Nunito',
                                      fontSize: 20,
                                      color: Colors.grey[800],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconButton(
                                          icon: Icon(
                                            EvaIcons.plusCircleOutline,
                                            color: Colors.purple,
                                            size: 30,
                                          ),
                                          onPressed: () {
                                            Toast.show(
                                                "Product has been added to Cart.",
                                                context,
                                                duration: Toast.LENGTH_LONG,
                                                gravity: Toast.CENTER,
                                                backgroundColor: Colors.purple,
                                                textColor: Colors.white);

                                            itemProvider
                                                .addItem(_data.dataItem);
                                          }),

                                      GestureDetector(
                                        child: LikeButton(),
                                        onTap: () {


                                        },
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.gift,
                                          color: Colors.purple,
                                          size: 30,
                                        ),
                                        onPressed: () {
                                          itemProvider
                                              .addItem(_data.dataItem);
                                          Navigator.of(context).pushNamed('/GiftScreen');
                                        },
                                      )
                                    ],
                                  )
                                ])
                          : Center(
                              child: SpinKitCubeGrid(
                                color: Colors.purple,
                                size: 50.0,
                              ),
                            );
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
