import 'package:flutter/material.dart';

class ButtonSet extends StatefulWidget {
  @override
  _ButtonSetState createState() => _ButtonSetState();
}

class _ButtonSetState extends State<ButtonSet> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      height: size.height * .48,
      width: size.width,
      color: Colors.black.withOpacity(.85),
      // padding: EdgeInsets.all(10),
      //width: size.width * .8,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
        child: Column(
          children: [
            Container(
              height: size.height * .05,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: Colors.white24)),
                splashColor: Colors.blueGrey,
                color: Colors.black.withOpacity(.8),
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.call,
                      color: Colors.green[300],
                    ),
                    SizedBox(
                      width: size.width * 0.04,
                    ),
                    Text(
                      "Call To Order",
                      style: TextStyle(
                          color: Colors.grey[500], fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Container(
                      height: size.height * .03,
                      width: size.width * .13,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blueGrey[700],
                      ),
                      child: Center(
                        child: Text(
                          "Call",
                          style: TextStyle(
                              color: Colors.grey[500],
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height * .03,
            ),
            Container(
              height: size.height * .06,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: Colors.white24)),
                splashColor: Colors.blueGrey,
                color: Colors.black.withOpacity(.8),
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.headset_mic,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: size.width * 0.04,
                    ),
                    Text(
                      "Need Help",
                      style: TextStyle(
                          color: Colors.grey[500], fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height * .03,
            ),
            Container(
              height: size.height * .06,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: Colors.white24)),
                splashColor: Colors.blueGrey,
                color: Colors.black.withOpacity(.8),
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.replay,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: size.width * 0.04,
                    ),
                    Text(
                      "My Refills",
                      style: TextStyle(
                          color: Colors.grey[500], fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height * .03,
            ),
            Container(
              height: size.height * .06,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: Colors.white24)),
                splashColor: Colors.blueGrey,
                color: Colors.black.withOpacity(.8),
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.book,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: size.width * 0.04,
                    ),
                    Text(
                      "Read Articles",
                      style: TextStyle(
                          color: Colors.grey[500], fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height * .03,
            ),
            Container(
              height: size.height * .06,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: Colors.white24)),
                splashColor: Colors.blueGrey,
                color: Colors.black.withOpacity(.8),
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.access_time,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: size.width * 0.04,
                    ),
                    Text(
                      "Dosage Remainder",
                      style: TextStyle(
                          color: Colors.grey[500], fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
