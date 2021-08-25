import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class JustForU extends StatefulWidget {
  @override
  _JustForUState createState() => _JustForUState();
}

class _JustForUState extends State<JustForU> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      width: size.width,
      color: Colors.black.withOpacity(.9),
      child: DottedBorder(
        color: Colors.orange.withOpacity(.3),
        dashPattern: [6, 3, 6, 3],
        borderType: BorderType.RRect,
        radius: Radius.circular(12),
        child: Container(
            padding: EdgeInsets.all(10),
            height: size.height * .2,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Offers Just For You",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "VIEW ALL",
                          style: TextStyle(
                              color: Colors.blueGrey[900],
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      child: Image.asset("assets/logo.png",
                          height: size.height * .04),
                    ),
                    Text(
                      "Flat 18% Off on 1st medicine order",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.normal
                          //decoration: TextDecoration.lineThrough,
                          ),
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.grey,
                        ),
                        onPressed: null)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      child: Image.asset("assets/logo.png",
                          height: size.height * .04),
                    ),
                    Text(
                      "Flat 18% Off + 20% Cashback on 1st Order",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.normal),
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.grey,
                        ),
                        onPressed: null)
                  ],
                )
              ],
            )),
      ),
    );
  }
}
