import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:marketplace/models/Providers.dart/ListsaleModel.dart';
import 'package:marketplace/models/product.dart';
import 'package:provider/provider.dart';

class ProDiscriptionImg extends StatefulWidget {
  ProductModel product;
  ProDiscriptionImg(this.product);
  @override
  _ProDiscriptionImgState createState() => _ProDiscriptionImgState();
}

class _ProDiscriptionImgState extends State<ProDiscriptionImg> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      height: size.height * .55,
      color: Colors.black.withOpacity(.9),
      child: Column(
        //  mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            //decoration: B,
            height: size.height * .25,
            child: Center(
              child: Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5)),
                child: ClipRRect(
                  child: Image.asset(
                    widget.product.image,
                    height: size.height * .2,
                    width: size.width * .4,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Text(
            widget.product.title,
            style:
                TextStyle(color: Colors.white60, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Visit Store",
              style:
                  TextStyle(color: Colors.white60, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      new RichText(
                        text: new TextSpan(
                          text: 'MRP: ',
                          style: TextStyle(
                              color: Colors.white60,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            new TextSpan(
                              text: widget.product.price.toString(),
                              style: new TextStyle(
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: size.width * .01,
                      ),
                      Container(
                        height: size.height * .025,
                        decoration: BoxDecoration(color: Colors.redAccent[200]),
                        child: Center(
                          child: Text(
                            "5% OFF",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                  RichText(
                    text: new TextSpan(
                      text: (widget.product.price -
                              widget.product.price * (5 / 100))
                          .toStringAsFixed(2),
                      style: TextStyle(
                          color: Colors.white60, fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        new TextSpan(
                          text: '  Inclusive of all taxes',
                          style: new TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.normal
                              //decoration: TextDecoration.lineThrough,
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: size.width * .35,
                height: size.height * .06,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(color: Colors.white24)),
                  splashColor: Colors.blueGrey,
                  color: Colors.teal[900],
                  onPressed: () {
                    Provider.of<SaleListModel>(context, listen: false)
                        .addToListSaleOrder(
                            itemname: widget.product.title,
                            quantity: 1,
                            netAmnt: 1 * widget.product.price,
                            img: widget.product.image,
                            discountPercentage: 10,
                            discountedAmnt: widget.product.price -
                                (widget.product.price * (10 / 100)),
                            mrp: widget.product.price);
                    Provider.of<SaleListModel>(context, listen: false)
                        .totalAmntCalculation();
                  },
                  child: Text(
                    "Add To Cart",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: size.height * .01,
          ),
          DottedBorder(
            color: Colors.purple[900],
            dashPattern: [6, 3, 6, 3],
            borderType: BorderType.RRect,
            radius: Radius.circular(12),
            //  padding: EdgeInsets.all(6),
            child: Container(
              width: size.width * .89,
              height: size.height * .06,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.black),
              child: Center(
                child: Text(
                  "Get ₹14.16 additional cashback with PLUS membership",
                  maxLines: 1,
                  style: TextStyle(
                      color: Colors.purple[900],
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.purple[900],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            padding: EdgeInsets.all(8),
            width: size.width * .9,
            height: size.height * .06,
            child: Row(children: [
              Icon(
                Icons.medical_services,
                color: Colors.black,
              ),
              Spacer(),
              Text(
                "Enroll now and get FREE delivery",
                maxLines: 1,
                style: TextStyle(
                    color: Colors.white60,
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
              ),
              Spacer(),
              IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.white,
                  ),
                  onPressed: () {})
            ]),
          )
        ],
      ),
    );
  }
}
