import 'package:flutter/material.dart';
import 'package:marketplace/models/Providers.dart/ListsaleModel.dart';
import 'package:provider/provider.dart';

class PaymentOptions extends StatefulWidget {
  @override
  _PaymentOptionsState createState() => _PaymentOptionsState();
}

class _PaymentOptionsState extends State<PaymentOptions> {
  List abc = [
    {
      "id": 1,
      "title": "Zincovit",
      "price": 105,
      "description": "dummyText",
    },
    {
      "id": 1,
      "title": "Zincovit",
      "price": 105,
      "description": "dummyText",
    },
    {
      "id": 1,
      "title": "Zincovit",
      "price": 105,
      "description": "dummyText",
    }
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black.withOpacity(.85),
      appBar: AppBar(
        title: Text("Payment Options"),
        backgroundColor: Colors.blueGrey[700],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Amount to be paid",
                          style: TextStyle(
                              color: Colors.white60,
                              fontSize: 17,
                              fontWeight: FontWeight.bold)),
                      Text(
                          "₹${Provider.of<SaleListModel>(context, listen: false).finalAmount}",
                          style: TextStyle(
                              color: Colors.white60,
                              fontSize: 17,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text("Price Breakdown",
                          style: TextStyle(
                              color: Colors.teal[700],
                              fontSize: 17,
                              fontWeight: FontWeight.bold)))
                ],
              ),
            ),
            Container(
              height: 10,
              color: Colors.grey[900],
            ),
            for (var abc in locations)
              Container(
                  height: size.height * .1,
                  child: Column(
                    children: [
                      RaisedButton(
                        color: Colors.black,
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              abc.title,
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            IconButton(
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.grey,
                                ),
                                onPressed: () {})
                          ],
                        ),
                      )
                    ],
                  ))
          ],
        ),
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(10),
      ),
    ));
  }
}

class ABCD {
  final String text;
  final String title;

  ABCD({
    this.title,
    this.text,
  });
}

final locations = [
  ABCD(
    title: "UPI",
    text: 'New York',
  ),
  ABCD(
    title: "NetBanking",
    text: 'San Francisco',
  ),
  ABCD(
    title: "Wallets",
    text: 'San Francisco',
  ),
  ABCD(
    title: "Credit/Debit",
    text: 'San Francisco',
  ),
  ABCD(
    title: "Cash On Delivery",
    text: 'San Francisco',
  ),
];
