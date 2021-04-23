import 'package:flutter/material.dart';

class WishlistScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Column(
            children: [
              Text(
                'WISHLIST',
                style: TextStyle(
                    color: Colors.grey[600],
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '4 items',
                style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  fontFamily: 'Nunito',
                ),
              ),
            ],
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.purple),
          onPressed: () => Navigator.of(context).pop(),

        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Dismissible(
              key: Key('id'),
              direction: DismissDirection.endToStart,
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
              child: WishListItemCard(),
            ),
          ),
        ),
      ),
    );
  }
}

class WishListItemCard extends StatelessWidget {
  WishListItemCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
              child: Image.asset('assets/login.jpg'),
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
              'Some Product Name',
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
                text: "\$16.00",
                style: TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 50,
            ),
            GestureDetector(
              child: Icon(
                Icons.shopping_cart,
                color: Colors.purple,
                size: 30,
              ),
              onTap: () {
                Navigator.of(context).pushNamed('/CartScreen');
              },
            ),
          ],
        ),
      ],
    );
  }
}
