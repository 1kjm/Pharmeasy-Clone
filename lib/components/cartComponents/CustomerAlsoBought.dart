import 'package:flutter/material.dart';
import 'package:marketplace/models/product.dart';

class AlsoBought extends StatefulWidget {
  @override
  _AlsoBoughtState createState() => _AlsoBoughtState();
}

class _AlsoBoughtState extends State<AlsoBought> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
        height: size.height * .35,
        //width: size.width,
        color: Colors.black.withOpacity(.85),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Customers Also Bought",
              style:
                  TextStyle(color: Colors.white60, fontWeight: FontWeight.bold),
            ),
            Container(
                padding: EdgeInsets.all(10),
                height: size.height * .29,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 15,
                    );
                  },
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[900].withOpacity(.80),
                                border: Border.all(color: Colors.white54),
                                borderRadius: BorderRadius.circular(10)),
                            width: size.width * .25,
                            height: size.height * .13,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(9),
                              child: Image.asset(
                                products[index].image,
                                fit: BoxFit.fill,
                              ),
                            )),
                        SizedBox(
                          height: size.height * .01,
                        ),
                        Text(
                          products[index].title,
                          style: TextStyle(
                              color: Colors.white60,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "MRP:${products[index].price}",
                          style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              color: Colors.white60,
                              fontWeight: FontWeight.normal),
                        ),
                        Text(
                          "₹:${products[index].price - (10 / 100)}",
                          style: TextStyle(
                              color: Colors.white60,
                              fontWeight: FontWeight.bold),
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: BorderSide(color: Colors.teal)),
                          splashColor: Colors.blueGrey,
                          color: Colors.grey[900],
                          onPressed: () {},
                          child: Text(
                            "Add ",
                            style: TextStyle(
                                color: Colors.teal,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    );
                  },
                ))
          ],
        ));
  }
}
