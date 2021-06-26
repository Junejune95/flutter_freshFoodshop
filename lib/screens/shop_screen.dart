import 'package:flutter/material.dart';
import 'package:freshFoodShopbyFlutter/models/FreshFood.dart';

class ShopScreen extends StatelessWidget {
  final FreshFood freshfood;

  const ShopScreen({Key key, this.freshfood}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.green[50],
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.shopping_cart,
              size: 30,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              width: double.infinity,
              color: Colors.green[50],
              padding: EdgeInsets.only(
                left: 30.0,
                right: 30.0,
              ),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20.0),
                      Text(
                        freshfood.category.toUpperCase(),
                        style: TextStyle(
                          color: Color(0xFF005524),
                          fontSize: 15.0,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        freshfood.name,
                        style: TextStyle(
                          color: Color(0xFF005524),
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 40.0),
                      Text(
                        'FROM',
                        style: TextStyle(
                          color: Color(0xFF005524),
                          fontSize: 15.0,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        '\$' + freshfood.price.toString(),
                        style: TextStyle(
                          color: Color(0xFF005524),
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 40.0),
                      Text(
                        'SIZE',
                        style: TextStyle(
                          color: Color(0xFF005524),
                          fontSize: 15.0,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        freshfood.size,
                        style: TextStyle(
                          color: Color(0xFF005524),
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 40.0),
                      RawMaterialButton(
                        shape: CircleBorder(),
                        onPressed: () => print('Add to cart'),
                        child: Icon(
                          Icons.add_shopping_cart,
                          color: Colors.white,
                        ),
                        fillColor: Colors.black,
                      ),
                    ],
                  ),
                  Positioned(
                    right: 0.0,
                    top: 50.0,
                    child: Hero(
                      tag: freshfood.imageUrl,
                      child: Image(
                        height: 240.0,
                        width: 240.0,
                        image: AssetImage(freshfood.imageUrl),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 400,
              transform: Matrix4.translationValues(0.0, -20.0, 0.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 30.0,
                  right: 30.0,
                  top: 40.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'All to know...',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      freshfood.description,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16.0,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
