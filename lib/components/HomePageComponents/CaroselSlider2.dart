import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CaroselSlider1 extends StatefulWidget {
  @override
  _CaroselSlider1State createState() => _CaroselSlider1State();
}

class _CaroselSlider1State extends State<CaroselSlider1> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30),
      color: Colors.black.withOpacity(.85),
      child: CarouselSlider(
          items: [
            _ItemImage("assets/img1.jpg"),
            _ItemImage("assets/img2.jpg"),
          ],
          options: CarouselOptions(
              autoPlayInterval: Duration(seconds: 2),
              height: size.height * .3,
              autoPlay: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true)),
    );
  }
}

class _ItemImage extends StatefulWidget {
  String img;
  _ItemImage(this.img);
  @override
  __ItemImageState createState() => __ItemImageState();
}

class __ItemImageState extends State<_ItemImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
              image: AssetImage(widget.img), fit: BoxFit.cover)),
    );
  }
}
