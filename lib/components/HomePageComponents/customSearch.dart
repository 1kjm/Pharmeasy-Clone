import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:marketplace/pages/LocationPage.dart';

class SearchBar extends StatefulWidget {
  String location;
  SearchBar(this.location);
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Deliver to: ",
                  style: TextStyle(
                      fontSize: 15, color: Colors.white.withOpacity(.45)),
                ),
                TextSpan(
                    text: widget.location,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print("hello");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Location()));
                      })
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(4)),
            child: TextFormField(
              // obscureText: widget.label == "Password" ? true : false,
              onEditingComplete: () {},
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search_rounded),
                  enabledBorder: OutlineInputBorder(
                      // borderRadius: BorderRadius.circular(25),
                      // borderSide: BorderSide(color: Colors.grey[350])
                      ),
                  focusColor: Colors.black,
                  focusedBorder: (OutlineInputBorder(
                      // borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Colors.black))),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  //  hintText: widget.inputHint,
                  hintStyle: TextStyle(
                      fontSize: 5,
                      color: Colors.grey[350],
                      fontWeight: FontWeight.bold)),
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
