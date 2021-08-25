import 'package:flutter/material.dart';

class Ad extends StatefulWidget {
  @override
  _AdState createState() => _AdState();
}

class _AdState extends State<Ad> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
        width: size.width,
        color: Colors.black.withOpacity(.9),
        child: ClipRRect(
          child: Image.asset("assets/offer.png"),
          borderRadius: BorderRadius.circular(10),
        ));
  }
}
