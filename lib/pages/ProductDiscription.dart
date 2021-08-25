import 'package:flutter/material.dart';
import 'package:marketplace/components/HomePageComponents/productTypes.dart';
import 'package:marketplace/components/ProductDiscription.dart/Adimg.dart';
import 'package:marketplace/components/ProductDiscription.dart/FrequentlyBaughttogether.dart';
import 'package:marketplace/components/ProductDiscription.dart/LongDiscription.dart';
import 'package:marketplace/components/ProductDiscription.dart/OffersJustForYou.dart';
import 'package:marketplace/components/ProductDiscription.dart/header.dart';
import 'package:marketplace/components/ProductDiscription.dart/image.dart';
import 'package:marketplace/components/ProductDiscription.dart/similarProducts.dart';
import 'package:marketplace/models/product.dart';
import 'package:marketplace/pages/Cart.dart';

class ProductDiscription extends StatefulWidget {
  ProductDiscription({this.product});
  ProductModel product;
  @override
  _ProductDiscriptionState createState() => _ProductDiscriptionState();
}

class _ProductDiscriptionState extends State<ProductDiscription> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Product Discription"),
        backgroundColor: Colors.blueGrey[700],
        actions: [
          IconButton(icon: Icon(Icons.disc_full_sharp), onPressed: () {}),
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartPage()));
              })
        ],
        leading: Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Header(),
            ProDiscriptionImg(
              widget.product,
            ),
            Container(
              height: 10,
              color: Colors.black.withOpacity(.8),
            ),
            JustForU(),
            Container(
              height: 10,
              color: Colors.black.withOpacity(.8),
            ),
            SimilarProducts(),
            Container(
              height: 10,
              color: Colors.black.withOpacity(.8),
            ),
            Ad(),
            Container(
              height: 10,
              color: Colors.black.withOpacity(.8),
            ),
            Frequently(),
            Container(
              height: 10,
              color: Colors.black.withOpacity(.8),
            ),
            LongDiscription(),
            Container(
              height: 10,
              color: Colors.black.withOpacity(.8),
            ),
          ],
        ),
      ),
    ));
  }
}
