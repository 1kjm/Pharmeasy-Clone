import 'package:flutter/material.dart';
import 'package:marketplace/models/product.dart';

class DealOfDay extends StatefulWidget {
  @override
  _DealOfDayState createState() => _DealOfDayState();
}

class _DealOfDayState extends State<DealOfDay> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      color: Colors.black.withOpacity(.8),
      //  height: 150,
      padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Text(
                "DEAL OF THE DAY",
                style: TextStyle(
                    color: Colors.grey[500], fontWeight: FontWeight.bold),
              ),
              Spacer(),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "VIEW ALL",
                    style: TextStyle(
                        color: Colors.blueGrey[700],
                        fontWeight: FontWeight.bold),
                  ))
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.timer_rounded,
                color: Colors.red[300],
              ),
              Text(
                "10:15:10",
                style: TextStyle(
                    color: Colors.red[300], fontWeight: FontWeight.bold),
              ),
            ],
          ),
          //  DealOfDayTile()
          Container(
            height: size.height * .2,
            child: DealOfDayTile(),
          ),
          PopularHealthProducts()
        ],
      ),
    );
  }
}

class DealOfDayTile extends StatefulWidget {
  @override
  _DealOfDayTileState createState() => _DealOfDayTileState();
}

class _DealOfDayTileState extends State<DealOfDayTile> {
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
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.grey[900].withOpacity(.80),
                    border: Border.all(color: Colors.white54),
                    borderRadius: BorderRadius.circular(10)),
                width: size.width * .3,
                height: size.height * .15,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Image.asset(
                    products[index].image,
                    fit: BoxFit.cover,
                  ),
                )),
            Text(
              products[index].title,
              style: TextStyle(
                  color: Colors.black.withOpacity(.9),
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Mrp:${products[index].price}",
              overflow: TextOverflow.clip,
              style: TextStyle(
                  color: Colors.black.withOpacity(.90),
                  fontWeight: FontWeight.bold),
            )
          ],
        );
      },
    );
  }
}

class PopularHealthProducts extends StatefulWidget {
  @override
  _PopularHealthProductsState createState() => _PopularHealthProductsState();
}

class _PopularHealthProductsState extends State<PopularHealthProducts> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Text(
              "POPULAR HEALTHCARE PRODUCTS",
              style: TextStyle(
                  color: Colors.grey[500], fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        //  PopularHealthProductsTile()
        Container(
          height: size.height * .2,
          child: PopularHealthProductsTile(),
        ),
      ],
    );
  }
}

class PopularHealthProductsTile extends StatefulWidget {
  @override
  _PopularHealthProductsTileState createState() =>
      _PopularHealthProductsTileState();
}

class _PopularHealthProductsTileState extends State<PopularHealthProductsTile> {
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
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.grey[900].withOpacity(.80),
                    border: Border.all(color: Colors.white54),
                    borderRadius: BorderRadius.circular(10)),
                width: size.width * .3,
                //height: 120,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Image.asset(
                    products[index].image,
                    fit: BoxFit.cover,
                  ),
                )),
            Text(
              products[index].title,
              style: TextStyle(
                  color: Colors.black.withOpacity(.9),
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Mrp:${products[index].price}",
              overflow: TextOverflow.clip,
              style: TextStyle(
                  color: Colors.black.withOpacity(.90),
                  fontWeight: FontWeight.bold),
            )
          ],
        );
      },
    );
  }
}
