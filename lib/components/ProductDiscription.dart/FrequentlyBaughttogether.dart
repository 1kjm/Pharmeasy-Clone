import 'package:flutter/material.dart';
import 'package:marketplace/models/product.dart';

class Frequently extends StatefulWidget {
  @override
  _FrequentlyState createState() => _FrequentlyState();
}

class _FrequentlyState extends State<Frequently> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .39,
      color: Colors.black.withOpacity(.9),
      padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "FREQUENTLY BOUGHT TOGETHER",
            style:
                TextStyle(color: Colors.grey[500], fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "With Horlicks Classic Malt Nutrition Drink",
            style: TextStyle(
              color: Colors.grey[500],
            ),
          ),

          SizedBox(
            height: 15,
          ),
          //  FrequentlyTile()
          Container(
            height: size.height * .3,
            child: FrequentlyTile(),
          ),
        ],
      ),
    );
  }
}

class FrequentlyTile extends StatefulWidget {
  @override
  _FrequentlyTileState createState() => _FrequentlyTileState();
}

class _FrequentlyTileState extends State<FrequentlyTile> {
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
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.grey[900].withOpacity(.80),
                    border: Border.all(color: Colors.white54),
                    borderRadius: BorderRadius.circular(10)),
                width: size.width * .3,
                height: size.height * .15,
                child: Image.asset(
                  products[index].image,
                  fit: BoxFit.cover,
                )),
            Text(
              products[index].title,
              style: TextStyle(
                  color: Colors.grey[500], fontWeight: FontWeight.bold),
            ),
            Text(
              "Content Info",
              style: TextStyle(
                  color: Colors.grey[500], fontWeight: FontWeight.bold),
            ),
            Text(
              "Mrp:${products[index].price}",
              overflow: TextOverflow.clip,
              style: TextStyle(
                decoration: TextDecoration.lineThrough,
                color: Colors.grey[500],
              ),
            ),
            Text(
              "Mrp:${products[index].price}",
              overflow: TextOverflow.clip,
              style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  color: Colors.grey[500],
                  fontWeight: FontWeight.bold),
            ),
            Container(
              child: RaisedButton(
                color: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: Colors.teal[900])),
                onPressed: () {},
                child: Text(
                  "Add",
                  style: TextStyle(color: Colors.teal[900]),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
