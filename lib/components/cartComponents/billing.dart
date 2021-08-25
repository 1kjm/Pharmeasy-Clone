import 'package:dotted_border/dotted_border.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:marketplace/models/Providers.dart/ListsaleModel.dart';
import 'package:provider/provider.dart';

class Billing extends StatefulWidget {
  @override
  _BillingState createState() => _BillingState();
}

class _BillingState extends State<Billing> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.black.withOpacity(.85),
      height: size.height * .25,
      child: Column(
        children: [
          SizedBox(
            width: size.width,
            child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: Colors.teal)),
                splashColor: Colors.blueGrey,
                color: Colors.grey[900],
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Apply Coupon ",
                      style: TextStyle(
                          color: Colors.teal, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.white,
                    )
                  ],
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Cart Value ",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal),
              ),
              RichText(
                text: TextSpan(
                  text:
                      '${Provider.of<SaleListModel>(context).finalAmount.toStringAsFixed(2)}',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      decoration: TextDecoration.lineThrough),
                  children: <TextSpan>[
                    TextSpan(
                        text:
                            '${Provider.of<SaleListModel>(context).finalAmount - (Provider.of<SaleListModel>(context).finalAmount * 5 / 100)}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none)),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: size.height * .01,
          ),
          DottedLine(
            direction: Axis.horizontal,
            lineLength: size.width,
            lineThickness: 1.0,
            dashLength: 4.0,
            dashColor: Colors.grey,
            dashRadius: 0.0,
            dashGapLength: 4.0,
            dashGapColor: Colors.transparent,
            dashGapRadius: 0.0,
          ),
          SizedBox(
            height: size.height * .01,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              "Amount to be Paid ",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "${Provider.of<SaleListModel>(context).finalAmount - (Provider.of<SaleListModel>(context).finalAmount * 5 / 100)}",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
          ]),
          SizedBox(
            height: size.height * .01,
          ),
          DottedBorder(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.money_rounded,
                        color: Colors.yellow[600],
                      ),
                      Text(
                        "Total Savings of ${(Provider.of<SaleListModel>(context).finalAmount * 5 / 100)} on this Order",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.teal,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "       MRP Discount 10%",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.teal,
                            fontWeight: FontWeight.normal),
                      ),
                      Text(
                        "₹${(Provider.of<SaleListModel>(context).finalAmount * 5 / 100)}",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.teal,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  )
                ],
              ),
            ),
            color: Colors.teal,
            borderType: BorderType.RRect,
            radius: Radius.circular(3),
          )
        ],
      ),
    );
  }
}
