import 'package:flutter/material.dart';
import 'package:marketplace/models/product.dart';

class Featured extends StatefulWidget {
  @override
  _FeaturedState createState() => _FeaturedState();
}

class _FeaturedState extends State<Featured> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
        height: size.height * .26,
        //width: size.width,
        color: Colors.black.withOpacity(.85),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "FEATURED BRANDS",
              style:
                  TextStyle(color: Colors.white60, fontWeight: FontWeight.bold),
            ),
            Container(
                padding: EdgeInsets.all(10),
                height: size.height * .2,
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
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                      ],
                    );
                  },
                ))
          ],
        ));
  }
}
