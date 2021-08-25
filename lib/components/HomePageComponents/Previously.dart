import 'package:flutter/material.dart';

class PrevBrowsedItem extends StatefulWidget {
  @override
  _PrevBrowsedItemState createState() => _PrevBrowsedItemState();
}

class _PrevBrowsedItemState extends State<PrevBrowsedItem> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .5,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.blueGrey[900], Colors.black],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                "assets/search.png",
                scale: 1.5,
              ),
              Text(
                "Previously Browsed Items",
                style: TextStyle(
                    color: Colors.grey[500], fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            height: size.height * .405,
            decoration: BoxDecoration(
                //borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    // color: Colors.white,
                    ),
                color: Colors.grey[900]),
            child: Column(
              children: [
                Row(
                  children: [PrevTile(), PrevTile()],
                ),
                Row(
                  children: [PrevTile(), PrevTile()],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PrevTile extends StatefulWidget {
  @override
  _PrevTileState createState() => _PrevTileState();
}

class _PrevTileState extends State<PrevTile> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .2,
      width: size.width * .4591,
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.white,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
        child: Column(
          //  mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              child: Image.asset("assets/medicines.png"),
            ),
            SizedBox(
              height: size.height * .018,
            ),
            Text(
              "Previously Browsed items here ",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.grey[500], fontWeight: FontWeight.bold),
            ),
            Text(
              "₹:350",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.grey[500], fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
