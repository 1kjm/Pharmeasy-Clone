import 'package:flutter/material.dart';
import 'package:marketplace/models/product.dart';
import 'package:marketplace/pages/ProductDiscription.dart';

class Spotlight extends StatefulWidget {
  @override
  _SpotlightState createState() => _SpotlightState();
}

class _SpotlightState extends State<Spotlight> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.grey[500], Colors.white],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter),
      ),
      //  height: 150,
      padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Text(
                "IN THE SPOTLIGHT",
                style: TextStyle(
                    color: Colors.lime[400], fontWeight: FontWeight.bold),
              ),
              Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  "VIEW ALL",
                  style: TextStyle(
                      color: Colors.blueGrey[700], fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          //  ProductTile()
          Container(
            height: size.height * .2,
            child: ProductTile(),
          ),
        ],
      ),
    );
  }
}

class ProductTile extends StatefulWidget {
  @override
  _ProductTileState createState() => _ProductTileState();
}

class _ProductTileState extends State<ProductTile> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView.separated(
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
              height: size.height * .115,
              width: size.width * .25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border:
                    Border.all(width: 15, color: Colors.black.withOpacity(.80)),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProductDiscription(
                                product: products[index],
                              )));
                },
                child: ClipRRect(
                  child: Image.asset(
                    products[index].image,
                    fit: BoxFit.contain,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            Text(
              products[index].title,
              style: TextStyle(
                  color: Colors.black.withOpacity(.60),
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Mrp:${products[index].price}",
              overflow: TextOverflow.clip,
              style: TextStyle(
                  color: Colors.black.withOpacity(.60),
                  fontWeight: FontWeight.bold),
            )
          ],
        );
      },
    );
  }
}
