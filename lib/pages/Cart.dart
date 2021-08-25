import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:marketplace/components/HomePageComponents/customSearch.dart';
import 'package:marketplace/components/cartComponents/CustomerAlsoBought.dart';
import 'package:marketplace/components/cartComponents/billing.dart';
import 'package:marketplace/components/cartComponents/footerDiscrp.dart';
import 'package:marketplace/components/cartComponents/header.dart';
import 'package:marketplace/models/Providers.dart/ListsaleModel.dart';
import 'package:marketplace/pages/paymentOptions.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  bool added = true;
  @override
  Widget build(BuildContext context) {
    return Provider.of<SaleListModel>(context, listen: false)
            .saleOrderList
            .isEmpty
        ? EmptyCart()
        : AddedCart();
  }
}

class AddedCart extends StatefulWidget {
  @override
  _AddedCartState createState() => _AddedCartState();
}

class _AddedCartState extends State<AddedCart> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("1 Item In Cart"),
          backgroundColor: Colors.blueGrey[700],
          actions: [
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CartPage()));
                })
          ],
        ),
        bottomSheet: Container(
          padding: EdgeInsets.all(10),
          height: size.height * .08,
          color: Colors.blueGrey[700],
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      "${Provider.of<SaleListModel>(context).finalAmount.toStringAsFixed(2)}",
                      maxLines: 2,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                  Text(
                    "View Details",
                    style: TextStyle(
                        color: Colors.teal[500],
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              FlatButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PaymentOptions()));
                },
                child: Text("Proceed to Pay"),
                height: size.height * .047,
                textColor: Colors.white,
                color: Colors.teal,
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              CartList(),
              Container(
                height: 10,
                color: Colors.grey,
              ),
              AlsoBought(),
              Container(
                height: 10,
                color: Colors.grey,
              ),
              Billing(),
              Container(
                height: 10,
                color: Colors.grey,
              ),
              FooterDiscrp()
            ],
          ),
        ),
      ),
    );
  }
}

class EmptyCart extends StatefulWidget {
  @override
  _EmptyCartState createState() => _EmptyCartState();
}

class _EmptyCartState extends State<EmptyCart> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("CART"),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(size.height * .25),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: size.height * .1,
                    width: size.width * .95,
                    child: DottedBorder(
                        borderType: BorderType.RRect,
                        radius: Radius.circular(20),
                        child: Center(
                          child: Row(
                            children: [
                              Icon(
                                Icons.add_outlined,
                                color: Colors.black.withOpacity(.6),
                              ),
                              Text("Flat 15% OFF",
                                  maxLines: 2,
                                  style: TextStyle(
                                      color: Colors.white60,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                              VerticalDivider(),
                              Icon(
                                Icons.clean_hands,
                                color: Colors.white,
                              ),
                              Text("No Contact Delivery",
                                  maxLines: 2,
                                  style: TextStyle(
                                      color: Colors.white60,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                              VerticalDivider(),
                              Icon(
                                Icons.repeat_one,
                                color: Colors.black.withOpacity(.6),
                              ),
                              Text("Easy Return",
                                  maxLines: 2,
                                  style: TextStyle(
                                      color: Colors.white60,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Search Medicines/Healthcare Products",
                      maxLines: 2,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  SearchBar("Kottayam"),
                ],
              ),
            ),
          ),
          backgroundColor: Colors.blueGrey[700],
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: Container(
          color: Colors.black.withOpacity(.85),
          child: Center(
            child: Column(
              children: [
                Icon(
                  Icons.shopping_basket_rounded,
                  color: Colors.white,
                  size: 130,
                ),
                Text("YOUR CART IS EMPTY",
                    maxLines: 2,
                    style: TextStyle(
                        color: Colors.white60,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
