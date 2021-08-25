import 'package:flutter/material.dart';

class ProductTypes extends StatefulWidget {
  @override
  _ProductTypesState createState() => _ProductTypesState();
}

class _ProductTypesState extends State<ProductTypes> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      color: Colors.blueGrey[900],
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Product(
                  discount: "FLAT 10% OFF",
                  order: "Order Medicines",
                  imgLoc: 'assets/medicines.png',
                ),
                SizedBox(
                  width: 15,
                ),
                Product(
                  discount: "UPTO 60% OFF",
                  order: "Healthcare Products",
                  imgLoc: 'assets/healthcare.png',
                ),
                SizedBox(
                  width: 15,
                ),
                Product(
                  discount: "UPTO 70% OFF",
                  order: "Lab Tests",
                  imgLoc: 'assets/labTest.png',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.indigo[300],
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(10),
              height: size.height * .1,
              width: size.width * .9,
              child: Row(
                children: [
                  Icon(Icons.sanitizer),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(
                          "Save flat 5% extra on medicines & enjoy",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "ProductSans",
                              fontSize: 13,
                              color: Colors.white70),
                        ),
                        Text(
                          "FREE delivery with plus membership",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "ProductSans",
                              fontSize: 15,
                              color: Colors.white70),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Product extends StatefulWidget {
  String order;
  String discount;
  String imgLoc;
  Product({this.discount, this.imgLoc, this.order});
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.blueGrey[900],
          border: Border.all(color: Colors.white54),
          borderRadius: BorderRadius.circular(10)),
      width: size.width * .28,
      height: size.height * .15,
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(80),
                child: Image.asset(
                  widget.imgLoc,
                  width: size.width * .2,
                  height: size.height * .038,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.order,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "ProductSans",
                  fontSize: 13,
                  color: Colors.white70),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.discount,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "ProductSans",
                  fontSize: 10,
                  color: Colors.redAccent),
            ),
          ],
        ),
      ),
    );
  }
}
