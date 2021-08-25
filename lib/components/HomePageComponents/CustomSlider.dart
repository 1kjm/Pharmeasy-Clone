import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class CustomSliderWidget extends StatefulWidget {
  @override
  _CustomSliderWidgetState createState() => _CustomSliderWidgetState();
}

class _CustomSliderWidgetState extends State<CustomSliderWidget> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.2,
      child: Carousel(
        dotSize: 4,
        dotSpacing: 15,
        dotColor: Colors.blueGrey,
        indicatorBgPadding: 5,
        dotBgColor: Colors.transparent,
        dotVerticalPadding: 5,
        dotPosition: DotPosition.bottomCenter,
        images: [
          InkWell(
            onTap: () {
              print("tappable");
            },
            child: Image.asset('assets/img1.jpg', fit: BoxFit.cover),
          ),
          Image.asset('assets/img2.jpg', fit: BoxFit.cover),
          Image.asset('assets/img3.jpg', fit: BoxFit.cover),
          Image.asset('assets/img5.jpg', fit: BoxFit.cover)
        ],
      ),
    );
  }
}
