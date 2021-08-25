import 'package:flutter/material.dart';

class MyCustomInputBox extends StatefulWidget {
  String label;
  String inputHint;
  MyCustomInputBox(this.label, this.inputHint);
  @override
  _MyCustomInputBoxState createState() => _MyCustomInputBoxState();
}

class _MyCustomInputBoxState extends State<MyCustomInputBox> {
  bool isSubmitted = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Text(
              widget.label,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 0, 25, 15),
          child: TextFormField(
            obscureText: widget.label == "Password" ? true : false,
            onEditingComplete: () {},
            decoration: InputDecoration(
                suffixIcon: Icon(Icons.check_circle),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: Colors.grey[350])),
                focusColor: Colors.black,
                focusedBorder: (OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: Colors.black))),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                hintText: widget.inputHint,
                hintStyle: TextStyle(
                    fontSize: 19,
                    color: Colors.grey[350],
                    fontWeight: FontWeight.bold)),
            style: TextStyle(
                fontSize: 19, color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
